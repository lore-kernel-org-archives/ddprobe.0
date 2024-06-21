Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665883207
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718938943; cv=none; b=uJ6VPxRXM3P2m0K9Hcj04YzGOHAnJQEtitIo2jj7dsVIKFhvAj/ZBQ/0rVPY/3vu18SWPi75fPR21nSckGA1iz1Zks2WkmvzG4URYeVLMdEP7AGVfvOr27v8KqEVyZGFyZqg3KHKJ+jw2J6LRLClFHZiR4ulbP/yVEHzh1f8FFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718938943; c=relaxed/simple;
	bh=8+6nGtLrma5IX7qe0OvgUVFlGYIOCRe/8fZWufbfUDA=;
	h=To:Subject:From:Message-Id:Date; b=ZQjQh5Ew9kJcUebDdCqTd2pj9mr53TsvtszMcC0nvtu6qcAHaD7XlgZx6YeTTVivA8J8AvcFa2vPwmwvV3nFCT2yy6NvOqXylnLN3kHdc6D8Cv4gFluPreXTik9icoI7NW8wY4nQoNduyYBpw2zBHVMQ6KL11xTO46Jb1ZtGx0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hfulOvEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hfulOvEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF45FC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718938942;
	bh=8+6nGtLrma5IX7qe0OvgUVFlGYIOCRe/8fZWufbfUDA=;
	h=To:Subject:From:Date:From;
	b=hfulOvEJZjMXr3AdgUIzdEEoBzd7Dk95vMNeG7SYbeN9cq3N/N5JLWHgaEg7Bm+Qg
	 uWrI5gY9e0xd0YYLxxbxfKUT0wYK/Hxe96iE9t2ROO+ljfJMTDc2neD0PMPMpibfPX
	 KxJpFE/rBQknn34MqirYtVwfE1x8EbaL0MrtQiDlA6lipuRae/wgzviQTuFMv3jBbB
	 Xv3+p15UMkiGtIXHjp0rYLCTHRyaQ2B1KYFKIN2HyK3zwYXMyKEMBGvqPljHDTWDTh
	 cIr0C7sGI82guf4GAV6BjVvKMxTnA7MexD6R28bx61KGbKA6hCqFZKeIBtEVihQPNo
	 pVg7iOVheb6/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41BAC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893894279.4888.9075169783441189631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d43a961d47fe451e1cc45968b31eaf54acc407d4809ec24b2b797beb0a382fa
Date: Fri, 21 Jun 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718938942
