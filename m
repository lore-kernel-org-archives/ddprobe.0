Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4340D1A5B82
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 20:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740430734; cv=none; b=tnc5AE4P2LytEA3BGwk4x6/zoRcu1qmbPxlFjkMGODNtRfx7KgvoJBIDIBHK4SjPOeHQpZOgGPrBCqOFXyg/omDkEOAoqeWZy+UjOD5IHtMBJYLwaZjr75EsyCEbD6xngp3Puj9nO8BjIoVaL/YOhaMxMy59Q1ji+bpf5SOEbIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740430734; c=relaxed/simple;
	bh=PlLiAlTJTOW+SNTW2Ev0wnmngWfNeJPj386crsYc7jI=;
	h=To:Subject:From:Message-Id:Date; b=fu4dKWp+7nWVH2/7/Q6IFoPRaMOWx6oT2DSw+EMD21SqMgu9GQF7BcaNLgep4dUPICmSrVXAyO0jehk7MIorhhE8C2hAgnWfbTXEPDnLd96iGANEmiM7GdGdMiyc+ap+UnQhfzMB694WxFp4SwCCdmcy8kQvilmdw1DZuts+Y4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQImmg0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQImmg0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DAAC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740430733;
	bh=PlLiAlTJTOW+SNTW2Ev0wnmngWfNeJPj386crsYc7jI=;
	h=To:Subject:From:Date:From;
	b=aQImmg0R9ZVqVVxLiSBB9NlfG5HgNAc/soF6R73QhNm6FWSwKwQotokUB0Gofs6tw
	 xVTGh8g0Iozz+zmSjVEO4Lq54nQbzXlnchLk6hg7xsqAzhPdFo4w3s1k2Pk7leLCMM
	 AnByrjHw43pRy5jGBGglZor7TlzE9TozmFJqAr0YvzkOiuAL9T+BKm4YmLWg3Enj7r
	 +Kn675qajsR9Z4f636719T+pV30n4SXNoWYn+z+6VaI0F7kV/8H71kLDZkTrnij2Jq
	 MS4HUIK6gjllbQ6Phj/P2eVkZpHn2RSCZxExZkgt4Shi+0+Bq8UoEOemGWOlBfS0b2
	 Sv6S8UBEUNKHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A046EC021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174043073364.7898.16764065052330378559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18319a3e208ce16872ac4aff799572571040c41430b5308404986b2378c0f0d9
Date: Mon, 24 Feb 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740430733
