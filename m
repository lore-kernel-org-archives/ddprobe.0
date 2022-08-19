Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FAC160
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660891252;
	h=To:Subject:From:Message-Id:Date;
	bh=4z4UmfywhHZP1/mXamndelRY9xXmuIWhuNmccXXHNTE=;
	b=BNDQEJi3UuntSSKTmI556lINjDJgtwaVlip/aqJ1Dd5twLGqCKfyiZKcr7LpYj8Y
	ZuIs6dwVTkmc1J3TqqyGkJrHj2AImUTTNfnUtX2B7DtoMvvKiPA7Ed1rKx1wSHf+5x5
	oAXBLOAxK3iwmerJbgDh5XW6PvQl50fsl8TtxxpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660891252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4z4UmfywhHZP1/mXamndelRY9xXmuIWhuNmccXXHNTE=;
	b=CaY/H9nhxLyB2FAP3Cwi36YUiusxL9ho81qZYs+BaG/jXoTZX6ROzypuPtHpEGBo
	ECO3JqWWaAFaHbFfgd0KtDOgpi0meH04oGzZxqpYNpTeQOS4eFPd8kBzH804aSu5B9V
	cruv+BJKqQ1RBkBowC+gM/kDMcaCK9jkxMdaMNu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b4d54794-31c71234-4603-4c0c-80b1-8ba67f778341-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbfecc376b28d0d3781f84cedbe959ee9d76ab4827649ea4874c6ebae0c466f2
Date: Fri, 19 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660891252
