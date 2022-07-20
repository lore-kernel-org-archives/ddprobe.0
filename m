Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DDF538A
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658322412;
	h=To:Subject:From:Message-Id:Date;
	bh=2rnWI+vzDLFRM38ubTQGWPIisLE6iKu53EXOy60HqxU=;
	b=A6Xsr/IfC7wplFvAXi13/0G9ssBKrpP9BEuREsbbVDw9VTT55v2x/Ag9LJd3h3oy
	aPNMXJp4P2aHF9nfuLmty+mffuYbeI7cbAOUAZhRTcu3ZjXQCW2Li1F0mTaOW6ulTnA
	+EWedFv804374N1IlQXjiNFcTwyH0aLmTOG4tgnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658322412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2rnWI+vzDLFRM38ubTQGWPIisLE6iKu53EXOy60HqxU=;
	b=CF6Q0rLA4pFm8WV/zMkPvsy2q9SYgz3cpHOM4+9FmwCgNxaatZaP0Fw1hM6ZEk2d
	CGTiu3XMsA6hHsG9JeZhVPQC/7koRLYwgnOmQ2ZrkIEhaErEFOrAqpKhOIIthv3cMhZ
	HsjKkVBlEYLl96LmfoAOWMasEF/Q+wm1jGOcFBCk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821bb7e330-11daae33-6122-44fc-9464-cc5a4dee6058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6b5fec1e7de2bf2045e04b38fe325f59c3e9089e3ec03430d28a87e5edc12f2
Date: Wed, 20 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658322412
