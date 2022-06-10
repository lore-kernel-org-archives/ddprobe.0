Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CBD7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 10:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654856459;
	h=To:Subject:From:Message-Id:Date;
	bh=eS3UYq2hO7Y24IzWZ6plF36EUCohEYXFx36lqgJhVHQ=;
	b=RId51b0ea0opqltEMmcPD1LVrCoEo3WMgzW2fnQiklobNikXFEJw85oyfbJnQnmx
	DItSgE86DuwG8p0T3ywqam8NJN19SMzJ4wLUjdAYZ5mKgimGvCu9Mj35hd8YkiHzjgC
	zim/RNBlICbLDmhVa0TK4L7DTACsRASEjDfbh3GA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654856459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eS3UYq2hO7Y24IzWZ6plF36EUCohEYXFx36lqgJhVHQ=;
	b=ehMhKG8V0w+a8QA1EVoxKIvZX75c6ctfOT6UQps8A5S37WnRQr1vs6FDmwYW8/qj
	t1HdV3EiPTEyAgKXYxvKj3umU/0fhAdMso2Hzng/sWOG/W5AeYPkGUIcqxT+beBcwL9
	36d/uKoyqT/n0XparP5fpS1z0kw03Z3sEg334gtw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d21a449-a81130a0-4135-4053-8b74-95c53b8918db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb86c80d1886382ae1a5b48c0bbafd4ac85880ac6e494fd1daa43a80392606ae
Date: Fri, 10 Jun 2022 10:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654856459
