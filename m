Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE6F1392
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660497052;
	h=To:Subject:From:Message-Id:Date;
	bh=NgIg/BqDZYaWIwHQx/QnlOixbAwhTijskSf2zDnhHqY=;
	b=VvJhWxno8mAf5TlKKwql8fYDI9StH2TExva0Zvnx092WeA2wNyznizzjQHshHG53
	Ynmb4vlRdKNRNZDjrf5afDjdG7eEVIiBPyyn/m6KqLRA7S5Xk1A7+Ud0tgY9497iasR
	Pe1zfnuQ3I0rEUrw+Nsv6GT0cVJV5OshOU+8p1LE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660497052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NgIg/BqDZYaWIwHQx/QnlOixbAwhTijskSf2zDnhHqY=;
	b=YcZuESGAdySa0GJfFNPn6pG2VWeW0MjH68GI/BHuwgm/8n2gyxz9OTMYQ97Fwq9V
	TvNWqwjROAbNSsiWoJjxU01/CRc2u1zvMShHRU3isHmdZb5nGpJ5CELotfuSesGpQQU
	bvx3Ixc0Y0qB9MzIw7sxiIO+O2hfy1ngxceXT0ms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829d564390-d935819f-1067-4f5e-a7d2-ba5406a53328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 046ba4f66889a803ad289681cedfa93f319c90c07a47809ae2a0afb3cb7129c3
Date: Sun, 14 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660497052
