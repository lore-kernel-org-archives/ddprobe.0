Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4362238DEC
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741324734; cv=none; b=nq7+T5ey/X/GHtnEK1GhQnKNgsccVXYb+v8WXXTBfvD+ImZULfyqgxvLPGwpVqAwc7Fe4zYApNFsjcTRtyOoa9lss7UrrGTQm6w7U+1RRe86AfgQbDpkLez6QC3PXZihQhskX5d9F7ZlhBQZXdewF9/gkw4f6j5otlCxj9ugGvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741324734; c=relaxed/simple;
	bh=uFajnkQ5Cj788GwqVbzLzMbGYm6CPeLKlasKnCkQThI=;
	h=To:Subject:From:Message-Id:Date; b=mK4CmFc24HA671pesNRLUgCesUC9I2FRmxxZZ6KGKh5RnkJBzYeJC0MWkeQqME7duTpAW/DlCzDFVXTiQh6+IDlxowRviPwzppofXwu8W7eVUCD/vnRN13GYMKJcvf5bybCCBRsjELD+X1D3goozDyJZU5Rle0gDbPgiLpPH4ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLwtCS3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLwtCS3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEABCC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741324733;
	bh=uFajnkQ5Cj788GwqVbzLzMbGYm6CPeLKlasKnCkQThI=;
	h=To:Subject:From:Date:From;
	b=WLwtCS3ygS/dPlqCYV0Bhtkk3qJw1dRiwKI28LlnjqseiUWb2YuRTEGEyQp4hAQId
	 BDuVf3x9tDWACzhFRUqq/Ke5WvUDpRQxQoT7OKCkne5ScBPmaKaQE3kCBb9H2iuqCb
	 37CEiDVyGGkqYwz/ZYplKweiaazSt0tvxb4Tr4MI1ZO/YVW8wKjaoaoABjnj3bEbjZ
	 CYPXAsw/wcPSgGjVmpb/0oJ7Ad1R/r6Zn46pCBpD6SvvDvpM2WRQxBlxWmGf8YsA1K
	 pi5PgCFQY9XNbu/AIT7uoQAS2u4WUDnxXJi3xo+xULlmEtsjluYkcHXGStGReuHRvN
	 kgDLBz4lB7e5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E10AC19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 05:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174132473359.23697.3708592712032958301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad2f0c8e0d3346ead141d76397ed3a77523d662e5934edc4a3a1f7b632f5e5c
Date: Fri, 07 Mar 2025 05:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741324733
