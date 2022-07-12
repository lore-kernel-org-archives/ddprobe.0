Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66894681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657649812;
	h=To:Subject:From:Message-Id:Date;
	bh=VWWxug1PX4Ssx0WMwbTOzmRtImq/VwRH3sUCo8e9dfg=;
	b=UkgBpYBySYjI0qycZg5wj8SDSnDIYbA0JI6lBjhoUABpHQ7jsWzgxPFeytPfSso1
	Pul4yAYAQcQyX9hxrZDqQss6YlZmM7wIFhr5ya6nYTMlK/8JPr6M25kkL2iWySxMmo/
	pZjcd9d5d29F0Gz0Z7VTPX+a33UqFBgWIHoBEtek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657649812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VWWxug1PX4Ssx0WMwbTOzmRtImq/VwRH3sUCo8e9dfg=;
	b=B26xrrnmDC0BvcfrO+w/36EJPj9kan964hCp3NT48kwlvlr4+eu00IOONJ/J9Iz0
	Dy1XXiazy6mM+LdALAtR73aKaeLHJlxc0My0aGfoxm5F8K/pTOJvQF3P57qX4uM/S0m
	L6v4XHD1D4+mF3Z+0TGrhz3yn1gx65nDQguWdZSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3a0d304-bafca66b-3868-43f1-958f-8fb42b4bbe57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b42c4eb86ada2d893c0657fabd6ba3babec0822a7645a9997253e58a72e0e672
Date: Tue, 12 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657649812
