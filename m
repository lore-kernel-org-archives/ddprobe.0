Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E9923A4
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656848212;
	h=To:Subject:From:Message-Id:Date;
	bh=5hT2iRp48e5/kY0uHoHhOw2fCVKM8XdigHMCA7CT0Z4=;
	b=ILyIc10N56mFDPGRRBNM5DBlZJPx6TsD7OuklGLhl3c2v4bfnTujnE1qSY3FzsSA
	ZI5ecHaglVaRFoamxxAnFqgZ8V1vAWQ/TW+kUCr4DXXryJucDiYsOJqH+jBLS58/oxR
	Dn2JX+KHSOC6RVTGx7dFtGkMKkUV90hOKQT9lm3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656848212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5hT2iRp48e5/kY0uHoHhOw2fCVKM8XdigHMCA7CT0Z4=;
	b=RrkBn2IDqrPzhZK+/aV4s4Poni32JSn3ViHQHyHISd7FsKdKKNlXKb8LhRJNY2Vg
	ovzJUAz9Adb3cQRoDhEVAmhCgiYNkBMzIiJRU1MyRmPa4Ot7N0YSGSSqhhXkjHxvgRK
	QF56a0zVE0erv9A2m97xlye6aViR2saZp18wNwdw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c3d9610f-24a81a4e-7600-476c-9232-98ce36236570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82a205f8c0cbc78a5971775a59559b9c371a532e4c384b81db1b649251228eb4
Date: Sun, 3 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656848212
