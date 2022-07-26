Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43194815
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658840212;
	h=To:Subject:From:Message-Id:Date;
	bh=vlmP8sqen/qNbD4aHH6iRLm61E7+LomCIaxsAM/cITE=;
	b=KV0Fo3/+k4CJRK92sKvakpg6O31GgoR6PoAHQ4hBhsnv4CXk4KhuIoF+u2rcGD3C
	cLkZY/bQjnlsfuxmC4vgL594fHumy+GUXHQleq7YO+oVF8cGblx52MV6pTPeYsHjQhL
	CPEFj9vqhQy98grtq2JadMZSvRU593rY5Ti4Zz0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658840212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlmP8sqen/qNbD4aHH6iRLm61E7+LomCIaxsAM/cITE=;
	b=a64HmwiMEV+vbcYj2OE+YcIxD5x63KY1hZT4U4DoSUtfTNWiEVEnU+xQP5Lj/vzf
	Wo0zfZT0bqCglQRZUrV/5Nxo021cmI2Nm8k4PG+ZbG93tLFufeTlE67ezyeonysxoA4
	c/Y7DyXdm7tNdRBpZGN6cs89KjuzYCTbXCGS/15w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a94e33e-506b6c99-35d4-4564-b4bf-937a6ecea077-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67c8cd8bcf46839442dad83f97b6d86d26aab5aa483b639bd98160dc6e1bf242
Date: Tue, 26 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658840212
