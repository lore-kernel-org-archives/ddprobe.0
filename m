Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C4F17A30A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776416854; cv=none; b=OuZy+MECLc0WxRXCvUZcBcNvIc0hfX7nKoZMxMktxTAZUZPrSfkdE6BiO9OUbxwC0UqKymqdG45CuCEvXX8Fln2iEkNs0V3d/Rl5T2CbkbdkG0ygqFU2/28hjidd6O81l0m9NZfDYS3TTDO/su9OoeLiw5yr/N+DfB5wZi3lEho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776416854; c=relaxed/simple;
	bh=5CCxx6b6iUcHVh7IViKZytZmQ8I0L3owurN1ts2iv+c=;
	h=To:Subject:From:Message-Id:Date; b=XQzjPZ8RNN83rpMEMfDatBhHtDDwrHQ1pvzlHETS1V6sJ9sSeh4YJQi5HAc3fM68/sn96k7rWQADb/KPYvobNLAawla3rGZx8BO5JvYdVkBLJ4DxBgxw5Qn7zxVyUOPfkaz/5Ut3TcmmPRBSflo5xiRu1Mck8prBNui27TdLEm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KA6B5H1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KA6B5H1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC40C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776416853;
	bh=5CCxx6b6iUcHVh7IViKZytZmQ8I0L3owurN1ts2iv+c=;
	h=To:Subject:From:Date:From;
	b=KA6B5H1i0rzh9E1AtTTkyV/uWbCz/dr4zYrAkvxiBgSx0w9LnRYUpsMtC6lAZimkZ
	 sRwk33B9f8yo+o1Ea+PmqR8HW1mUBQKvskgOxYzm0t+nxsKZTjaKcemUr+6Nh6kKmM
	 DZ7EVbOfDiVeU3Ass55xEz5K1sejVaNfqbrj1Fc6LPDhmGZaxbLXbsa6T3/xT4MARs
	 fNbt+94Me44VsM+ugMWduWHnAG1kWxCk35NdoCnmHBRqPl5oL/njXTAwUMopczptzc
	 +3V0f5mytZOJ67FiRuB9KC8Uok2CZE+htFehYyDvp4zvbbJ+ozZRumvTQ0M+38iLPd
	 kYUQ2biyZFP0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95A5F43685
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641685368.22526.11964235376754300138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324da5079928adcc744decfb31a566f7be40c2002f88f898c0db99facc2841db
Date: Fri, 17 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776416853
