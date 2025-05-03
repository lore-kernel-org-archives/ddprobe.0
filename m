Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4407E156F45
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746277794; cv=none; b=kjH1zBGZ8+2sZNfPZ3B0HF+boUsqJA9C5htZnW0sf4xSPLo3R/3iHf1/51pCZCCX72QQRHRh+kur5BNgtoyMlj6HAcY357kzKEPf+n7/ZGncLdRx8eV+w90bCxDb9H3JuOrhS681k7aqUBa6rRbLdTDk9PrvKM3bdMvawuMq6CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746277794; c=relaxed/simple;
	bh=WOwWEiN+z8ZjJmZHHYWw7A4z2bYcPGY+66G34PM85Xc=;
	h=To:Subject:From:Message-Id:Date; b=uoQUhovaBOnSX2bhs2nBaxDISQjIxeW9f1Zb7OjjPYQwW1gbcUDR3rhgQuTH5Vl+7rIb5MUr+Et2jl4wFMkaLMX0TQFL9GZA5VFTj2oIdeSkh4l2i1OrStNwY1RU0zxcmYQLIYR0MaIXHrNSzxhs7mE2tlc9m0yFr0rhEVzPkxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmQVIRGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmQVIRGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D15C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746277793;
	bh=WOwWEiN+z8ZjJmZHHYWw7A4z2bYcPGY+66G34PM85Xc=;
	h=To:Subject:From:Date:From;
	b=UmQVIRGHj9H68c/Kux8Miu1hbzbPrde5Er9oCa7P10n74s+gni7eAJmlrotkX/kaV
	 ylgP1UGqATCHYzK9vS9w6d9eug707j9ziO24y09ayslfaqW2Rh2+1f+ReUZ7eWfkJf
	 X18CRnLmo2y20aP3xRAoHQ6GN/Y35tOuY0j4REh9PNBOvh2dvRmiKQzrL3/SDGVGXe
	 ZlMPUoAMu9fZzECyIMtK4WYlCdaHlpFhQWvZo7WcTpmCn9TUel4t2UFzY4hh4UvXFA
	 w0Y0ttttb+X+0NniafrLyZr/MPR8coy+ZK4J2cr/fs5+hgWHwV2r378qsKmUaohHwC
	 5dWtgIWH+6ayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9317EC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627779357.19731.17309806794033760774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b51eacffdae0dbb903d40ff218c93b41946059e1bab130b247d5fc9a4ed720
Date: Sat, 03 May 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746277793
