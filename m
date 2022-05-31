Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295AA33E1
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 15:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654012379;
	h=To:Subject:From:Message-Id:Date;
	bh=qC+cgHU8IZkVMhanFrMpZeRmqL+xfa7txy3tEl/R4zA=;
	b=Ff4Gph1Wcmrppu7IY0WHKogNrP1gr2fKnxHby4H8c64KeL87o4Jy5gKUh6/u+48L
	BA6LrfKjSQDnHulFjB1CYuskUCm3B4Z7LbLFM6A+/QZNsaJLiCb2J/RiZyrQOVoYma1
	UVwQvgzAiniYkUGcNdLaQ+K2GG1+ORuOxelRl7J8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654012379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qC+cgHU8IZkVMhanFrMpZeRmqL+xfa7txy3tEl/R4zA=;
	b=hcTU35iqc+75pOsg1PjTvQuKPUoYq+cTYhxnwzIoMkuRiacpY0D1huswZTDcyL/c
	0cTCU/4iF73vmCViqWuJg2iPuOCVha7+7JxRzq6TQ8HIvbbBLw12PpFqxCOJgNrlf0j
	5vZIaM1SKd/TJx/FQ+xvhFFq5k2djFbA+p2+J1Es=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ad2007f-d59b6bfe-a993-460e-a037-4a983dd3851e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4aed7cb8a86516560d6c0c5f18a37dd1385a4cec07c344aae8a828c7f040748a
Date: Tue, 31 May 2022 15:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654012379
