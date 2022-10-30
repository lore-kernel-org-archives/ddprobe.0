Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29312913
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73611C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667124054;
	bh=Xa7A8c+zrIynjMfJ69gRnM4crxSu+dpNOWNmwMmNGCk=;
	h=To:Subject:From:Date:From;
	b=Or8gGTA1gyRCnePLp55bMc0HtlhPgXYegP72yAoYhBLA0ZjjlhRmraCLy/+M5CYVo
	 HjG/hkB3I+azdlb/l3zNNNWi8QhxMxDg84DMBwOYoG+aTjiA9L09RrguQ0cdNsVdBH
	 NG1B1d4C50R0hUt8jjb+5ZMEcNS4zoNPuXi20o6MJKsequHYSAtK8NNJngbVWMawvt
	 nN21aYuBTZFMFrNGjDv/9HPqznKm//TeFZifs0woj0lJ0gJD5jwS9Bhc5kXrTuNMFc
	 Juc279QGL8xT32Q4I44PAwwY0bMcaybda+WtSdFoki5vPkug0ZKKyiD1x7Fg3PoYrN
	 b4u/nXAn6rtsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58448C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166712405434.19628.10953253868679454356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce59bceb088d455d9013a9d7c03445f13c456208a9af35b071c457aa420e54b
Date: Sun, 30 Oct 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667124054
