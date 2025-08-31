Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3226E17D
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756664994; cv=none; b=FAJ4tjME0nL8xb5AmHHP+jz269b5uKbDOMXqOkztn1hVZQXPO7C7w54Tgb5gkRFquD41Ystcn9tWNOUY8nrqYYlMJ24VHEyvDa+em7BsrE/LFPSlUPwwDDm27/iwbEND+XK2346OksFKe673q9mBcKhgCothmyYUp1U7M9tH1Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756664994; c=relaxed/simple;
	bh=sEdNSBrDqr7LxH1l6/P5A2FGHkCoglX7xguOczKcmyY=;
	h=To:Subject:From:Message-Id:Date; b=tS8oOsA+aZXTx5xQ4HLfRIr+Nzgkeo5k+Ci8q6VjThy5W6ZMnqdvvCs4SaRKHDl2yC4c3DSftx/B8y1baYDMPWOebMsznORa3uGPdkoGjxJSlU/lkBMLfY6HyfmvtoAtkoQF6Admu78bbllGG9Fq41pK5jS7tykbdJxTwyu71vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/TZG0L9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/TZG0L9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2B4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756664993;
	bh=sEdNSBrDqr7LxH1l6/P5A2FGHkCoglX7xguOczKcmyY=;
	h=To:Subject:From:Date:From;
	b=Q/TZG0L9y/LulaGuGx0Or0cMRgx4Wubrw6wZhcbVyTVCghU2t+GMupjbsAYw5OiS6
	 kREZEFGeWC2e5+GCQJFTc3r2D3UoG/4yqNxkWevBGo1ziBmyNDp7gyt4q5fGNQHfVA
	 gD2mKjGh3+K04Qz287ZNd1lE2jN9YsPVVUysNp6MjWwwgwCp77/FtibkLclsnnHAnF
	 43LVWqPRA3XcffEo2FFX0npeSes8+/e9+XUNrysobe1UnLmbPws7k7SET+GNGR3Y0E
	 9YARDqHrsSxoZAA9l0fnJnceKtv8RyE9ZiQzUHsulgZPkfEAEG8g5B5d1Wo3FnLWnU
	 KUOOZ6GLOQbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175666499357.28439.5215224787408254258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89c69fc62ebf5c54f31b3bab5e480825e97b6343d999d0570df31184eea6236f
Date: Sun, 31 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756664993
