Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8EC7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 04:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655614739;
	h=To:Subject:From:Message-Id:Date;
	bh=cT8PhLVCF6aSvXA4KnNV509EPSy/yI75JliqJaYq/ms=;
	b=MyWyM8zvhimewQC4Q5QEnBc4Vcz2ggNB5jQwNLvTeQg4rWVaTU8hK+FYFAF9GrN+
	tEFll/CXVuPgPOrvkzgwxTl8cdpjkCo4BDPyjfLOUuv8gI4uaCyLQ+HbIJN8XIrwoAH
	w9KqtSZPaoNmFk2WDIvoP+1FEv9lOaHIs1+HiOBw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655614739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cT8PhLVCF6aSvXA4KnNV509EPSy/yI75JliqJaYq/ms=;
	b=T5b9MRDoKIoqARcLLIqokk1ASB7OWNfnSE8Ws3OwMgga5mm3m5ukyXSU0vLoGEK4
	I7k8z9wWrlYPRf41CQSavL2usewTIUBIK1M1FNHogfeupFcejTgGfagevlLgTX/cIPM
	pKYTELWUekyFE4S03z9E8HL00yW142n/QVtamBqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a54135f-1718d7af-650a-490d-8570-a73806b815d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f0ceb800a01ffdc7953440da14c17b7a61ee83b23dc25e122473defafcce58d
Date: Sun, 19 Jun 2022 04:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655614739
