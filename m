Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E885D17C2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A76EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671965487;
	bh=doWW3pUn97+qcIEi0iK8VECHRFmnK9cHcfj7yMYZ668=;
	h=To:Subject:From:Date:From;
	b=Ivfj0lCwpeDPkQpcbxGq+1RRTzEz4/kxDE7PCzroMfbMzfP2o+0WWbpVh3UI0RC+q
	 N4SnZqcFWS9/THv5gZfx5avCukZxbTs0mB1StMa06qXlqdTaCunaXTP9hZFJpCBLR9
	 Hsoss3iRnbzt4gaF1mn0rjBAFp54/9cOwyRnoQ1GxSYUuSz3M0EjAB+m7IqEKDpt6E
	 3p2mbwV+/40wzS7txsxm0dZOoMV982o2wwnw3181hPtQthEABB86s7SYk0yFo3Jx/L
	 JIS9OQau65IHXnyLWRHCv3Br2Db1rDFX+naFUdf60lP/8SB9dRsUx+0XVzUpIgBdP4
	 rwPpnE8sOUmng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F0A9C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167196548744.8931.6950100733304009031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a8c847a5f7754b1cf62eb1f0ec3ed3484632afbd856dd387598e37ec68f08d8
Date: Sun, 25 Dec 2022 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671965487
