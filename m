Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031BB1FC0EA
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771461894; cv=none; b=i+CjoVuC9GIsWj8X9/jGl+TSZSB9p04P9QG9M3QANFqIVJ8MgaT3wCsMuZ/tbgoLLPdQ3G1uEaAoX+aF8QoAn4j35p/4M+T2tPKVsIiuVqNmYiweyQf1t0gWFkyWcS0u/aBWM9c/uiAHy89P8/Ul6WlQ9sMNWU9UE13+FIGtYSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771461894; c=relaxed/simple;
	bh=/alLdINWGmttd4vKlAcJKMFc28+ttf1U0raOoWP9Yn8=;
	h=To:Subject:From:Message-Id:Date; b=nAL8DwAm+PVFjeiBkJ48NvvsRqlIla5bCnVNJP7ryhViEmWyukDfyJ0/w8+AWah4wIwFnswk/3ChFPm+lpYEhTFVXzd9/6SbA3QNOqFAW7DZI2+MgYZmdx8IFUHOktWMShCNotv2rwxGLGb7dWUCuHpI+5lj2/4EGt+ym8Nh8vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgX7ViwZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgX7ViwZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2A8C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771461893;
	bh=/alLdINWGmttd4vKlAcJKMFc28+ttf1U0raOoWP9Yn8=;
	h=To:Subject:From:Date:From;
	b=tgX7ViwZvTGpQT4WaSxdrDLgzlKc6k99ihzme3RCX4LAeHMK5eveCqGM0IKjOz3e4
	 THPCmQrzhm3MG77DKV12N2yGQePNH+0mKXjWWsrjwLkfcmEpDISi4D4e9kKWVJoLTy
	 IRbvVsHnnm1vdx1bhb2DvEiUDJ5pQduB5C/pSiW6up7TaJv65bx0bwfH9wehO34PVn
	 Xhqshs7mbt/eI66mne64XmSXd5D6Y4KLe3/ycDTlyciU4LqPYZ/4T12eMAZ9pKS3gE
	 7UQPUh0K6ox3Wrwq5/uoXHOldt3ZdWWIv3cz/jmgY0WF/I2kjfJfW23zn1/idNxHk6
	 nsR9QZemjLpFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976EBE9A04D
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146189361.19485.451725271652634739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfedd9f0c1c21a748c73c067f79c60204daaf230292655f94c7cf8d7333e0d5c
Date: Thu, 19 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771461893
