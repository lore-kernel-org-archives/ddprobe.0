Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B8B7A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 01:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652749739;
	h=To:Subject:From:Message-Id:Date;
	bh=bL4FKIWjnchkUT2Hpy+qI9cUmO1NydDoiu5vnI1G8LM=;
	b=cee5sM//fVUb3S1hQhfiXuPmk4/of2ZZbJeXtBLyxVAYN0xG1WKdoU+Jb7lB5/VP
	BwxkKR5CNXDir951rq7xiwwKaMMeTqIGiD5GLtKk8ONgGOFKkwKrp1l4WesVFDUz+I/
	TtNBzTPN8jeEgiwSWPGACtk1Qx8dDzPuBnVU2YsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652749739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bL4FKIWjnchkUT2Hpy+qI9cUmO1NydDoiu5vnI1G8LM=;
	b=XtDjeMsgC2elTdbuSu9TEFFzfI2+sezq0YUrYOMubFKWdlh/FCdFQkDts9NwedK9
	M/Kkq86+McH5MWsrrwu0x23+CfwSyFlapbymBZ2GjXoiSrmuV7xEx8LbUPCOt1Z0Mjc
	v3VaZaF8qq3gcZbLzMDJFXVYGvWVOPdv3lsGKv4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf8fa548-87696522-379b-445c-890b-e908a0d416ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd54d1548a2aa00552ebe623702cb3574e60e9287f7fbcc9822b26212830b929
Date: Tue, 17 May 2022 01:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652749739
