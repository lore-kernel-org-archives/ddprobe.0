Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5982BCF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766428433; cv=none; b=Znnvgu1bqp816+BpZMzrp3dBIqYvpEZeCWLEMqAmfXovlSyWM9W9nL79MeM6gSWS24pegN80+25dPgSXRb7kEPxfJuJ2MDWoZ0mU0oY1LwB+262+kBywHnwVTgf7+KBl7pxVFP9V+udZRZd8vYREV+t/Qq5aROOkrIs+/luMjHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766428433; c=relaxed/simple;
	bh=dLXRqXAMjvZG/2Gpi9lLpXeufw+gR6TPielh1TqpVX0=;
	h=To:Subject:From:Message-Id:Date; b=jrJSYPSTfkXUuIeja9jRjR0eEzqhcttNmCyA7dFlzFwaJJ9Kubyl5rNES9Z/Px/D1dj5dPkoS+HVhyCEHzIXXtShIV0NnzHrxTEsHQtTFf7K5OMgiDuv/omLi/gJn969Q+SWHOhoRbT6gxAXIEkU5DjRl2QIYy0mjrVNvfTbNco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWYV4iZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWYV4iZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CDFC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766428433;
	bh=dLXRqXAMjvZG/2Gpi9lLpXeufw+gR6TPielh1TqpVX0=;
	h=To:Subject:From:Date:From;
	b=CWYV4iZ/ObW8OrpEm4FTGakX/7ZNKhVL1RSPHTN70lTBUVEEhAmteYd0xkUf5/6yC
	 eFSrY2xJAaGJveHjYCipibGHy1s+GJM3c1oe16rmf4HjnDZUV0jPlLlm8DL3MAi4T6
	 7AwvC/9jHMo3X4Uc2bYqW99FbRpbdHj5TQ/C69DYAHV0CJUdefXeyYY5FqjRaCUcJS
	 DBZSg14A3RxByckwlaKfcVGBtuKy2uPFQRW8vx6yed6u/CKseXT0nQoBftm1WLidBd
	 yBRXOPLMp/Mh29aAcwOuPKNNwuSHZjQ2Pi7YnYnoWofPETPf8SfxJhZ6Y9HcR5V7+i
	 BBR+4opUr7TaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB5E67803
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642843358.18161.3483568295532820671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21651684a1917c3a34a3af84afd2ae18ccc3e169c6c4907727972bc79899f33
Date: Mon, 22 Dec 2025 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766428433
