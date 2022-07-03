Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1184A23C1
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 23:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656890212;
	h=To:Subject:From:Message-Id:Date;
	bh=uW7PveyKxX8U8KSUUALLA3Eaeera3TqVyzb19kl/YVk=;
	b=QQgBdAlfTt64i836EqCGF4gLDjWhulYQp5WZlVOl4hdWeSneNr4rpmx89k3ACyOj
	QocTnQHd4mjLBYXDA+43bm+sSG0muQilTP2QKqGdAUlhXNYMLDt4iWB5rLuTGjFlYQ1
	hWgLTaJNkNVO4ZDf2fnr0daSY+pVGlx2A4jZaHpg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656890212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uW7PveyKxX8U8KSUUALLA3Eaeera3TqVyzb19kl/YVk=;
	b=akE0FRwsc7ViCpzkZpLc/AoUVDVLAtij6p3TK/cwZbj0vfwoHkzmbYP1Ib0Yj+fp
	ut5+P6nPXXrpGl/FEsZqA6mJeTjO7a5URHrh7jdSjIwxg80vLcj9H3V/tELHNhSda0I
	CUIHHzYm/WxvHJT0z2j8yEqW2LFhzOH1EoE1EGZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c65a3faf-66886f50-c7ab-41ef-bf7c-0621fc1e9236-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f064f27887300eeb1ee812dd92762d3d20c92f457832c25930655e17cad2c32
Date: Sun, 3 Jul 2022 23:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656890212
