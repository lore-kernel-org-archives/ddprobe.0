Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587E7187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660740652;
	h=To:Subject:From:Message-Id:Date;
	bh=09rdGmywsqP7Qqr9aKkygdXEfNWyAlO1RfcYwJpTcyc=;
	b=glhutMtQR88VAqOaBEUwZ+ZBC8AZV+kuzHG2p2xuinWmF54fliNZiOTfLFhX/j1a
	ykdGOh2XAX8R/lwPVvInb5qhLYDvYDWGmVPWbzZnBrn3ocDe/LvsJf3oIZbtR3WixeL
	ND1lPUmMbTUw0zz1HdM8eGIIw84eecMTg3Vr2mwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660740652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=09rdGmywsqP7Qqr9aKkygdXEfNWyAlO1RfcYwJpTcyc=;
	b=YuTDR/P9MiJrbCftxbclw5pYIPxsTqPepEy2VD00VWUEpDed1dy3M58w5VXurymc
	5u4FKTTLM/PjISRz6tkMxriqAHURBvh5qvqtqitH6QvKLkqH31ZIn+AVlISNDtEY3K9
	gVnFp2T3QA/eM4Fizi4Tw8GL17Zz9Pn75Vam28ik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182abdb4e29-cfb7282c-819d-4932-81b7-11573126c12a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e072c3d16e1310c8f3c8f83c3679e530b7416c07a5e2fe010e4e78031acfe16d
Date: Wed, 17 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660740652
