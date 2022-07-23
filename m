Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B09F7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658551612;
	h=To:Subject:From:Message-Id:Date;
	bh=S37kS5TA9St/l2NEfEbJQCfvqaVql+PDHBH5PI/hAVI=;
	b=EoVlSZOFwJKPBIPvudfkvoD5FkLwxPDoMA3PYmkN6J3yYYSAYymyKmI1IuS7Ycn5
	phes8m+B5NqsUbQurVWCYlW/rpNvVMZmbXZ/3QPTDlJDzotRIkG4L6gkxhI2O0c4Pdm
	nvWW/r4RlZKwlMA6gKzaMufQWy6F34Oy7khweUoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658551612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S37kS5TA9St/l2NEfEbJQCfvqaVql+PDHBH5PI/hAVI=;
	b=R/Oml8j2uziaYdtRCjAAd+IbP+QDFr+PL0Eqy5zke3XDrcE9PHm6iRnWQjFPxM80
	99Dy3AyJxBsapd1eOV2BNmaUU2SQl8lHSyDU76KbONSG2op9M/IW7zYWeL/mFEmDS6g
	WFqarmS/rtZVq8Wava4JK9sTt9+cuzSHNTDlg2aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182296133ac-eb8f854b-a6e7-40fd-9150-9709dc0c997f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af898bdde50d6f65f2cc797666ea6b0be62529640acd05dcedda61cc284a4116
Date: Sat, 23 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658551612
