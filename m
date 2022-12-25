Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64D02117
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7892EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672003287;
	bh=J0Bv/YXfHc+D0fE9fPMAm18pBqSY7mIEJiO4LujsfRc=;
	h=To:Subject:From:Date:From;
	b=KQxBFhiurY+K3OI8wXRg6zD492YLBwrcJHcMe2hPKpRN8n9xOVIpT/MKDeMGR+G9n
	 Yh8JCsVSUw/6w+V9o+nfMOv1CQzanBJsPtNl0aeIwYRZvaS+Dm0I2ojUGNSZUXzqQD
	 Y8XZQGGBkSap7cq2ravXvF9gmJ8Y2Yeh2URt0ZG0tZ1SH4KJm22dwk3qh021J57rVa
	 k5uHPxZbPfHKQlXXxF6cYgIUubFH+iccNzM+1n7Z9vLKav8kbvz38BEnrduMTBSX6X
	 So6gSLkRz8ForTUfwY4WJ+MFBQgB7S4ZUta6zv3+8QP0dav5+Nd4OnJLWuFuRc7xIW
	 XvSlHufeL/Tfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DECFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167200328737.13370.14166009221858260669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf63c268f797974999cf87c18099a11fbf0fa0decc351affe98824d696f65e03
Date: Sun, 25 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672003287
