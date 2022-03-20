Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BC32572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647761184;
	h=To:Subject:From:Message-Id:Date;
	bh=3fMwWzGcVCmmcpFqIGFIQQJCbmPgh1HX2JHpImv/H+Y=;
	b=WpZbjnZN8j5cIL+cmcAV4uNQl7AQ9L0EsBwsbGKEX5C90oQZvTOhIyBtI3Lig3iN
	pVmtVNk1E/kc1auLLghVGu+07ZFOarQd3uS7B/eQk/o1UIUTHZG9Wo5jgL1/5GHuCxs
	mUScw6yaj1S1LAamyyo+VPCGo8WBZU+tQkCgHOVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647761184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3fMwWzGcVCmmcpFqIGFIQQJCbmPgh1HX2JHpImv/H+Y=;
	b=AHcJoSif5q6MMOUNe8NMoHRtFToxxIwLoJbIXi1Y/4hs51cPFjSIrdEK/Su6wL+d
	C1TTs6venv9EDfPzcGLFi34AXB1AAjZTZtcUL6r6OxiSyli65JyYHsR0GSX2OzsTH/E
	aLN3AtmwWydC/6mNiXCSrgb+BinZ1tyhmgiQ1K80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa63857dc-0e0bd743-2ecf-44b8-a410-3e9acfc16630-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14e9f630f58c36b955c3d7559c114876a98333fdb8520d066f48824bd16f1144
Date: Sun, 20 Mar 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647761184
