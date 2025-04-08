Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C642F44
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744073394; cv=none; b=Gb2DiPApIcUt2QH0X8vhqTZbdVPv7LMrMLebIKtFZmyT4jveqCv45PQCvlt1u2Luxzmh8Bo+bzDg/qo/I3Gzbc1eVvQSDi4jYc0rp0eWg7BrtZwSgI0rY4sfociAPn61Zt7ONkrrwNCgPWHaKDqwBAqFJSzrG45TvobhHR+MTMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744073394; c=relaxed/simple;
	bh=QHQmE8afdAL17vBoELuMAXea1+hZq9TrxBMZLMtqcNs=;
	h=To:Subject:From:Message-Id:Date; b=NpvVVV29+Pk6tXKDuM9yZ7TC+09SG+KUloedN1QNENZHHrEblUBTl59fSycoJlmMtW5C4C2SDcOfVrdNuwH0CBE2mdOfe1jdvdSxrnfxeue8jbb1OuzuAnAlDgaUR8x2D3hFY+CAhgubZaQHczw28T2mRAtBgUaPpslNZ1j08pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsDVwuEV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsDVwuEV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29E2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744073393;
	bh=QHQmE8afdAL17vBoELuMAXea1+hZq9TrxBMZLMtqcNs=;
	h=To:Subject:From:Date:From;
	b=YsDVwuEVuyaLr8pJRJv4uDyD93Wc2Vt2xFj7cSOMQtjx1k7yj51bAS/EOMWvhTAQr
	 xhGGsYN82FWs6JvOiT1ta6zULt54VE6vMetMVmJnj0cVrRBXQygzbmGgH/1L/Vdiox
	 4ASitdQpe3yKxUBDaSgkvW4yoGucVio3DIqQtEpH5muT/2KlMCZg8lLkVZSSTmewXw
	 WDkLV/f/cVhkOveLwU6p+GrJyeCAEAWXMU4JUV/GUiryUuNP4gbQ5aDgdMLHsTJrWr
	 Zy3m3de5FUhIU8bSmGpWQcQI7g4dd4kPSpkPBf3X7EQ3NWGI0oFj5azMZu2jE2hC9m
	 KH6/i0BNTTdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DB7C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407339359.13104.13394267557518998539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169af58c58729118892d80ee7f079bbcd294c472d012a4945c07e76a5400395f
Date: Tue, 08 Apr 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744073393
