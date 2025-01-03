Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A0233DF
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735946754; cv=none; b=fseySNsrodcEQzaxsb7HUKXxllhg1K6P7/XiRM+y3XS8zu9wbJ1Dk+Y0FBqvdUFdCw4IaitM5hEjNE8cC4GvXh6uIOJulfRs5oJTPOR4bMjt5/iSGcB1J0Iibwk+ClVl/w8eMQhIUm1YZ2fNUpeffPNcqsgEVIsvnwMwtLjoxBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735946754; c=relaxed/simple;
	bh=B/TRxGB63cNH/9RSFDo+9u/ud2nhY5LfER2T8UZXyzg=;
	h=To:Subject:From:Message-Id:Date; b=HCtxOmBSaRLvDKQ9hhAjYLnsfTKZZCCKPnvDMGszkG67PbJGnNvLfCpX77aM/5PBLCaK55+8fVO7cYYe2kFveaGs+3mQhR/O5FKOUuEwLqjP9SdX/CdLsmmg660/GNpIbRH3Cf9XbmHW4aF878NXsgkyRR4PUsnneAE08Mc54Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G3yLLceE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G3yLLceE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEA2C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735946753;
	bh=B/TRxGB63cNH/9RSFDo+9u/ud2nhY5LfER2T8UZXyzg=;
	h=To:Subject:From:Date:From;
	b=G3yLLceEwjwPpzqWkprcppnupfvKfsueNPQWpY0Hxg8I7+QOOMfbCyzmJNdF4rMf5
	 ekIabLEUoHyFXtRraEmayCxt4mAfGfwT3KrDpPnJRId89JyUmg8SeU2My+9MH3gn2K
	 LGr/FP20zCqnJaZjIJqLxfzFyxCgDsO7K3h/fNgrjK+nBQUmVskh/9kKMCprMHXMDu
	 AuHAiELdhN58+WQ867nEvNY1P6PMs2JXfWOTHsagSa9UwmcKBZoP0CYdjLL9hD9obO
	 l0W1++HsCbL0lCaHjtSIhr8Zoa31bjecBwEDvLt6ysYDj3Zuz5iQCl9MKET2GEzzGE
	 bVBMkg5BvwqXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1D6E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594675361.4243.5580397000272772170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da239e75c5b72bdccef6dce01850430fc120110d0dea25958a3e6a3f1a700942
Date: Fri, 03 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735946753
