Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206AE17995B
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727418954; cv=none; b=KqSnJvxf+OGMuSSHxLxmjrjJAfmUzvoe52kupFOJTz4dDJoCWdUvmGx++v/gRFxGPQTxKpZCAMkZsHAcK8Vj/CSs3kf3HljJQYB8Jh/jXzyMUPxxRW5xiG4znhmBkXLqJD4kKSdbVxn0V7CA0jdzafWyocEqW40+k7/zAYHFH0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727418954; c=relaxed/simple;
	bh=JKChZ27/c2reWF7k40OVvip6IwMSSR+aIGAVtcfKbAY=;
	h=To:Subject:From:Message-Id:Date; b=EbpWH78DQSUD+WnzRU9Vpcet8nIJiJoB0w3gKnBNMF3S6G9KVmkrpjrxcPOY4wR7wbh/hIenf/SZZsU1KBecK50IKGLVeaQgWg8sQwD0M+eTpT3W7x6MUO1Ur3civBwyxF25AR4KGsPxt7YyJBAx30oQPjLC6tcWm0fCNukAoWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nz+sxXsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nz+sxXsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7AAC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727418953;
	bh=JKChZ27/c2reWF7k40OVvip6IwMSSR+aIGAVtcfKbAY=;
	h=To:Subject:From:Date:From;
	b=nz+sxXsS/2OJ296f9zungYbbqMpxEcBDISHPKKuldthZjwlNvKnbvKtHikPPSp5oL
	 zWyW6dRv3/79NOfNK5P9TOPyeAaBh/NojhFewMOqfCrIihzRItieDQDlVhhM97viVY
	 AX/cWP9+0McoTBYh0SWojbCsGoJLKYgRZjtzjH3kRBXRapRbVVjECsW/myJ84hm8fz
	 RQE5P/NCuPuMn2NxBbrMu3J14ICwvqgoyGfgtbcGaXN8/qcntV8zNAXrma5trYiEMy
	 6B2TygIt5NmHCyJkJNqieAikaZ1JEN+Gl112TSNCZbzLT+9L3Ff3Jy5b4mhSygsqy1
	 Xd8+f1JqrewWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E2CEBF65
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741895361.7058.4189295741699706514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd39d26791715c6999430aeccd5ceff34346831dabeb07957281c7468d45e410
Date: Fri, 27 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727418953
