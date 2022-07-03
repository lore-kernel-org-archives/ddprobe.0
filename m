Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1924823A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 10:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656845212;
	h=To:Subject:From:Message-Id:Date;
	bh=GsNngbnaC+I9/vWbn4QlIivjSrCCW4AkBJkSMwrqUgg=;
	b=eKZxFkRbyCY3oXA8Tx9r/EqKX0125ihvsSJnXdOvPlYaKrsmBmv6VRfBExotL3XC
	da9yN3cdALbnmBznro5TUap2EFT9KWJZOEbXpH9aB5O66ZKosN9kQ9lFPMEw+t0xY6E
	OExFt4qP1U7XHbM2e4wpYDugrZ6tDqPqgukG/7X4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656845212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GsNngbnaC+I9/vWbn4QlIivjSrCCW4AkBJkSMwrqUgg=;
	b=Zuk0sDBeSCt3x678W/wOSJvExUc1Ugtdpz8BnELeR20/Uw21kPIhuWH63R+3bhYn
	cPV+uwLL6tYNPyMg2cUIW6RMys6BTJnyfQswVnVMMHXsYVPtdQ02olSn0TV7xrskzWI
	Scpqeni4g2tO/CIuqr+4/Rga/gGBOC+Oyd5LmfWg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3ab9a83-99c5f85c-8b12-4c33-ba84-f8215c1c6f91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 798b99ab40cb98641f966dc2cea4d21a31fe8512395aab6e1ca719ba61db969b
Date: Sun, 3 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656845212
