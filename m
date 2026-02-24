Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A77A2DB791
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771959894; cv=none; b=mlvISO0MQjYPcv4I4gU/1wFAPxVks7wEyR+tKhtYup84foxj8TWIp8MybBXaH+dbnkT1epdc2tIiEBi08+VP4N31g74XEAEG6gBJFQPYhBpEKFfIaqWeUUWIVs3hqWmO95jWrIUmVkJJRry8GVzGS1DD8uQLrjFuiSL1mEEl1lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771959894; c=relaxed/simple;
	bh=6ktz/HsToKI5QPxDM1Sl9F0BhIFR8/QSNqKe1QhHXs0=;
	h=To:Subject:From:Message-Id:Date; b=h0hH2b0uy/rq3H/JJxwJuXIQcHJIT0Ru2hr9EAXx3hlzi37BMCZV2T4VwYdURKkqhmpZ57bSqq0oYHjgtjNnDOvWQ/GNUXfcpTU7G+BzxOWaLWMJ2Zdja3C5O8jgJAeEwzG3Ib069xXbJnuMBTl4AnTMZqUQ/yejMXQx/VRGbaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiUfoCoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiUfoCoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7CFC19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771959893;
	bh=6ktz/HsToKI5QPxDM1Sl9F0BhIFR8/QSNqKe1QhHXs0=;
	h=To:Subject:From:Date:From;
	b=iiUfoCooccYqeOWsQIB0rwQaUedF6Y1Ozk0YCrjbNFvBl0nQ6cgF1VVuoCqGJFK6d
	 eMDo40k4SgJ/aCZGKRwUnFr4YlE/swCym9lUk6cHv8XULbsuRYo4alwtOmwQYnCJvt
	 APvRHOwzvkiAKpg8YdL3l3RL0Xmre67ZZLA1BtZLVsVLaKXRpv8mqn5/49CewtewqD
	 yb2gZoABsfeTx/gcv8apX7rue/tD21+B8a2gOHweI+FvN27efUiP9U5+/JAobAI7ew
	 Nod/SeQO6CVoxR+BMR8SoEEVRIHE64J1YEDbz+i7/rEAwFimy15QMqZitkPoabt2x6
	 LpaDEwNFnSJ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D66F4BB77
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195989361.12469.7798327118387904930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4426bdf84d5e2fa140396abc482101ef813ef34a271a0ad36320ab3a6d1b2b76
Date: Tue, 24 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771959893
