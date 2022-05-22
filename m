Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F802F28
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 15:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653234479;
	h=To:Subject:From:Message-Id:Date;
	bh=icOmWoY2Nk8dw61kyWUUIRPDiPlORBTj+/FezSCWOdY=;
	b=acFAlbwuXGXx2l1gvc506u61A3g9Xuow4UNyNOH0hJloJ2zPNwuFubPtx9FVpU0m
	Ar+ND+hkzBTiRKvDQrYiXiWThdCS6qLIzyDaKcJxO8QVFJIf/VzGoR2SWmeHxpZ3xYT
	TR6BdAvdmPB1gB4K391pCtmqjpfGRTJzxb4Q2ItM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653234479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=icOmWoY2Nk8dw61kyWUUIRPDiPlORBTj+/FezSCWOdY=;
	b=GIY9I9do3OlINe2Cua8W04poDCkZTmZlIPehkqNsQXg2Y5msl0FGQid1UUXs6em+
	laVfihxP1Ltjum+CfJxeXqRTcCdNooh966nHK0D0lJaQBUlb5WHQq6P41m7JRUh6bsM
	ib31DuVvABOGt8tFE3WjJ0+B5oE37VqjyBWm5E4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ec74310c-0c68ad5b-ab90-4ba5-ba00-3477883ea98f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e74638e47add5a9b3d44fcbd7aae384a88938c09e15904dad8b6c405a187a2c5
Date: Sun, 22 May 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653234479
