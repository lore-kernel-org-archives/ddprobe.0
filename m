Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32457C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656249412;
	h=To:Subject:From:Message-Id:Date;
	bh=veR/6fvsURwax66ZXOtQmyYS+MZdkIuryAqNnEssO3E=;
	b=IMiLygDCD9A418gzNpbXeuoIsT6eypQFG1VwBGAVl5kvMfgixZdtubahO259ORyE
	gM2gSzQ/g6muyIfOSq8kxtRMeHmoD5bsN0hOCtgJscAsA/IVYutom+kcN1r9b0VV+xQ
	widu5sIbyVpAF/JL+IcBGSXqqFQ14lranaXVWEqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656249412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=veR/6fvsURwax66ZXOtQmyYS+MZdkIuryAqNnEssO3E=;
	b=NRLLIo84ON3SThJSSgkwnaoxoY923/CTHWcY1yZYDCHRuL5Tkt2tBiMKuanZARNW
	8RkWs4XQPKAnDIORwND+zgPY6rIydHli6uC5PimcEWPA0O0IoiKyc9RkvpsSlI3SomT
	aPhWVBOLPvQh+ykO6tTFIKb2eIeEdA9SeOlyQeSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a0286ad9-30e95a7d-5e88-4855-8113-729d8c77c787-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 251d6fa1f649a7d3cbec80f4daf22a2f4a87086b920f35c33cfc48639bdbd06f
Date: Sun, 26 Jun 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656249412
