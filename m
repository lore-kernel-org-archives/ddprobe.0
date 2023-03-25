Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AEA1FA4
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D8CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679735525;
	bh=AgEENmw4pN1KmNI/BAgeHtt4f2p3c9OrPJqD8/fpKWQ=;
	h=To:Subject:From:Date:From;
	b=cjsuKDeIkCCPCBWhAF55cULUFQ0MkCJvzFLUpwHym3U1JeEXdkOzsfDqO5hNyYFGe
	 /As2g6lA8brMso6dqYHOg/W8QRGxWe64oaQ3EKS+bBSbk5nrQykj5P286oMbPxoNin
	 hWzQLO2rCTzE4qz2np1F2MWWDlErBzDOGaoT1ie64YAm/PHmOBFsH/k0gQvlCPjoCr
	 FPhlc3ClAsMJGd5xXgfkV1r+OJoCGbgUOqaxMp/mTQ9QRUO3H6ogNZo01/bj3IDizx
	 6OfyAOc0I/dA8y4PlkdsQgbrXc6Cw1kuea1DVhOUMdgX8LFx66sIIszkgheebeXiMB
	 QHOspFi2g3M+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4E9C6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167973552577.25374.11877438826038453380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814a2f834c0b4d3ee9224e35b6882f15c0ea1aec9e6a30d2cf12f0f7737e693b
Date: Sat, 25 Mar 2023 09:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679735525
