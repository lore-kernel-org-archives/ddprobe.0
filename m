Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9682D2496
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775740594; cv=none; b=dfhVj9QSvSMOoMlZLONqVyYnFszm0hLCRO22FrfuFOYmfXUBTsHlmm2e99MUzX6/iuQJ81Qruh7EvNVM19FOImaXXV1Dvsn2WCFNHMKi5YudLfvD6bVGyNWITTnA/CxOKkZ2G7fZ9stm9kSuRNkbesJPLZCkJZ5u4N2audotvZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775740594; c=relaxed/simple;
	bh=PsknJTs2z8ohtEGBVVd0Xfy8Ng1oQ/pvlxTG9MBocUA=;
	h=To:Subject:From:Message-Id:Date; b=oxCQ2VNMmz6k/fREgndmOoO/kBHLnpmXLuAKHoD5ZgTzxq0GSC1GyTcMYpz+azpVKAXw+7HQkIWcBiwOSTdb1uD1KXyn0G2JDv6uJQdxJiSDt/TIf7UxPXN7Apzs+ssDXUZnNdbJlVZ4hwixaz6tIeXd0Tm5uIUopuFodMwAa08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnXMSBW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnXMSBW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1D713C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775740594;
	bh=PsknJTs2z8ohtEGBVVd0Xfy8Ng1oQ/pvlxTG9MBocUA=;
	h=To:Subject:From:Date:From;
	b=qnXMSBW7OpLE9gduD0J6w7cLce7rGF2t5I/cArFuL+PXtogP9TFvREFbAYzLiwk8d
	 dcURj0DW89VdS4e+YxHyu8Wxs2LWqnhNdd5gqgGwtyoBmmVZsKQ08NFZhRvN3g800G
	 VUQzqaoLaOtKKsBXuoXd+Qvw/Xh83W4rJF5zwlokw4I5p8/qbFTF28F8IY5k+FCXeq
	 1+ZDWjpixKUMxXMF09cs+hmz4k0vcenjkcbEQwMGbrnEKjL0yCwINRYw2fLqKmIBC0
	 LZLiZPETMHsLgU6oZI3Da8ZkcOPjHrK2jP5ziY6AqDLO2ru+M5z0Aub2c6gQrxjjgu
	 G4XV/+wfG8Scw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7C97EA3C5D
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574059385.28576.10962226627592948548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09709e46ca83c100c33b788ac5354f932ab33d807b04fa8c21a010b8269cc77a
Date: Thu, 09 Apr 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775740593
