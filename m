Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E94263F37
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744624194; cv=none; b=tWvVGWOekOS3y5O6wgEF0kTcIb0TsvhXoC22HwM55la00DVReH4wXBCEtuk4uYo8KBb24HNvIU8kx4XcCmfLQRB0qOog1dA2K6U3Dx0w4An53SXtzaBybRIUs7ZrdzcclC4KtTatFN3ZtEfRDxd4grhSNQfX27BQOo3bsPLmkxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744624194; c=relaxed/simple;
	bh=bNmmZnFASg6+nq+XzCLboImJnVNrJ8JWeWaB/E8ZRBM=;
	h=To:Subject:From:Message-Id:Date; b=fDcA/u6WTsohJNkK9iJ9nnD5bO0780JN42XSzgPWDoVX6tFITOhOuVI9OMIzSaqFPFYiEfPEckrubP4vO+d1NJx0QPLg+bE9nswKoW82j71ZTbTzcrgjIn5SvSrOL+Ru5Ln0JEqOFi6AAb8HAVJfTas4QxBusWenlhNjJ69K6sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A+jX/4xx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A+jX/4xx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7440C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744624193;
	bh=bNmmZnFASg6+nq+XzCLboImJnVNrJ8JWeWaB/E8ZRBM=;
	h=To:Subject:From:Date:From;
	b=A+jX/4xxqbTHrTHJnZsytqD3PHjqLg96EEt1bGOG1EuCm+T3MbubMPBcgAck/lXik
	 bnPkT/6W9caeI4hjsJzN7V7Jntyjt+vlmTohmRPes69DmjSVlltDxIeGx9WfehZQtX
	 A+SZDSID/eHHCD4JVF8b+Cz9Vttailh/VVmf4tUd1v+Dm1wAaOtPHvRMMdBUuN4rIy
	 HZ0HXHJpv89k7I3LA8W0UChMztnIBzm9YWO8enTX1+JM0fxAm1miZCIA4LoAGwNPrT
	 aL25QAEhBq+PdSIwehq0V1QaLA230/7VGKEacmntLAuQYAZatdnd+4s4wP8GxbLb7X
	 fL5ZpxOr1e/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957E3C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462419359.19388.15683249730911789908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc6002c123307ac3190d8d81e9034840d4cdf6914323e919912d4452086bf0b
Date: Mon, 14 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744624193
