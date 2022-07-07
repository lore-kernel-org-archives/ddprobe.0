Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69416367
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 03:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657165612;
	h=To:Subject:From:Message-Id:Date;
	bh=/PXR3iMFEMO+W4OC1XFuX7UnCFoKXf/ZO4yaMhHMx3k=;
	b=ggFZuhb35Ce4ubgJ7qpdy5q4zHwy0YL20GPqAP3w9jkwRqRlGDJHqScs16sgddYH
	8+rlELuaYqHS6Uist5dP4G0BN9PW+VWiXf1RiWtYMryCArixcFW1zJ2pM9xczliWCVD
	tQ5CNXFZZMehxZxf4ho9F2I65RYIRTSvRzV2AOWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657165612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/PXR3iMFEMO+W4OC1XFuX7UnCFoKXf/ZO4yaMhHMx3k=;
	b=DbvD1c03Ypwf2R3DbPGNnUt47yS53lv1FZMfAcCSnkOaFm6LLZuDBgo1BuO4zxzN
	MWdLigiy2+HB3xAYCRRP3v2bCCrosoiC2yT2qL1+j3hpk/xcixZHCeVejCyvu9UB2u0
	c4Cqo3qODPq5sGrSWtm3O74EaNdCIlVbQXzSwS94=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d6c48509-ff8e4178-cdab-4d40-ba18-4c5749489356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a353da36e264eda062dd033dfcb16e4952fb7ec25ecf2340a38a1fc4c65d2865
Date: Thu, 7 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657165612
