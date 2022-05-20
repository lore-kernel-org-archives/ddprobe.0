Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6437E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 08:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653033840;
	h=To:Subject:From:Message-Id:Date;
	bh=arTuI3DbOYIS7l9rXRV07eLka2aPHf0oSgEl5/o+OwM=;
	b=D7VmIXIXOrtt/3qt7W05axSAwQjhTh5Yz0bpawhB9tgGUxJRaJV0OIRgrF9BuShu
	i+YTORgf1x23aCt6jZxxZ2xkVLvRt+YKDKLkiRQXY51aYEgPibGtqLqrXCcFkleQe7c
	NXQnU4Eg7ndsDdaxCEBRtdBtpZFiisLQjTxKInvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653033840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=arTuI3DbOYIS7l9rXRV07eLka2aPHf0oSgEl5/o+OwM=;
	b=EJAfmRfG8uLjlShAmzfJkBNNrr1IkRycQRh0hRLdpS/vuaUBHrkLM8HC8wckrVHC
	lzKKpaDiCwZLv3/nrek85HD3CnlBxUqKOwpkCzvd0IA+KU11iRyi2/lqh3/zUVQoJ9s
	jfJik6LwZ9BMPHO1Q4uQC2YrirCNCvOnJiBUtZZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e07eaaa0-cc1820bd-b847-421f-9fa4-7174e5a79e73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02cf89c4e9abbb8ab4802d9131ef431fa42f03894e59a08e7c9dd3c3234073cd
Date: Fri, 20 May 2022 08:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653033839
