Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDDB36C
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 05:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653283919;
	h=To:Subject:From:Message-Id:Date;
	bh=j0hTiggtWGjS8w7Yn2DcNFBB4LHZSwuiGQ2aQQURPmo=;
	b=XjDmMW3wGGOPrX1mHJJEqTpn5E7Ca+Tf+CFycgYOhoBmiDj47S5G9sAMvIjQ4Zxu
	gXVP9M89bJDRaKz/WIA1uxwCTpe3JzWBoNM7B9q1GtZWTz3MfsPH/EGaJPEfCvbwgf6
	LuRPzUMSpYZELsuMD1HzCrsvS8PzKkzR7tfqVCUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653283919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j0hTiggtWGjS8w7Yn2DcNFBB4LHZSwuiGQ2aQQURPmo=;
	b=YLpy8UKv1AyR8DDSX/EWqHUSg7A1t9/ofZZZZe6KGQj0CTv5UAsXLUWiD412bTWm
	cG30T3ZO3tMa0neZ+KuCK9WxNeif9qnCZbdgXJmEGrmiudY1qAfGpzRdf1szhUrvF/4
	GHzgndsXY0ZCuqksRnMz3WLbxSFr6BRcePvFSxJE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ef669603-ea9bae44-9423-45c1-806e-d0e65a94bffc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473e2fbf933b7e19633506a8ee5360bc143feced78cc9422719668d23a97e394
Date: Mon, 23 May 2022 05:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653283919
