Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3823515B4
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA52BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679534345;
	bh=MLH7X7+UMch0dcBj74ukxeFHgB+TinUgcqT3RTCz2vQ=;
	h=To:Subject:From:Date:From;
	b=pYCFrCbNuWjKLb2XpRGmDxBzxshn5kIr8HsVUTiJBWUQ+RvL7w1/pjb0H8vCL6Fxl
	 2WBPvbtpGf7avBZoP/4zq2qYLEHj59Pm6BVe6KJiqcTd/qgDQlD/xu24rBhhUw77gv
	 7SE0e5Tx6w15yVnOD2dy9ZeKJzV0Fd1sPtzPQREJFg48SBn3gln49IL19Q374lg1X9
	 EXiJwrnIS5fLE/xnDbX7yPpos5IfcUSpJmsH14GXVQSW4Lt6aiCsBeORAZ9F4F8duQ
	 1eePjGttGMlCUraUHpU6goycgAm7I1RrBUFSQli0YjjVnSWiVOQrVdtoMHz6g1jx5r
	 KdvCb79tey5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF99FC6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167953434577.7628.16358380473972163719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493c98bd09fbdabf639701db27cceb9a629f5e79694ced1a45f95d409047dc48
Date: Thu, 23 Mar 2023 01:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679534345
