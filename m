Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23BC57EF
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656707812;
	h=To:Subject:From:Message-Id:Date;
	bh=7Gu6dv5yyCSdRKKT6txSRItSAM7n8f33Lsy86HerXjg=;
	b=GPZAYlTg/MPNwKBj/ig3m1eMajDmlciWIC4HJMynDSX4QeBDo3pDCRWgfoGAZIcV
	c7v76PdyiZnE5QBnLPi0B48WGVOvs9IJLfoSdd+e5rrOSnML/Q2T30Ra/jYySvo/YS7
	jvq8xuE44qGMkwghHMdWDLn2Z31DWDhnB1YvNmUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656707812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Gu6dv5yyCSdRKKT6txSRItSAM7n8f33Lsy86HerXjg=;
	b=X/GxqoeAR5+yFkeP6WQv++RaWe4MV92eXRYZYwtsTEFst2tvskE9SYeab+QXU6QS
	LEHkenh3BYweXcX/J4lC8aJJk1RVV30Ni3UOhy4k/aQaE9gTpsd1vyqq1s2a2NbRmkQ
	iWEEJXo7pQW/hQGZMb4GZxaRd1rJkSSbQyWHrNcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb7b0b95-5f67a13d-ec54-4331-a9f6-f60fdf3b3ed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47d534a950cd67ff8398899b13d95ee66429461725e6d7246dada8e9fb69a92f
Date: Fri, 1 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656707812
