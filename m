Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729C61C04
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660570852;
	h=To:Subject:From:Message-Id:Date;
	bh=WPjOa4CNOrO+BIOBMl8KzEeXASd8I8GcoUR55Rw77T8=;
	b=hdaLtnJmrXavw3SFTHC8Mi6OHRvwDvVZA7vbgxoxtv4PSjqwXyv1tKul4bgP5D1e
	uXa6HBsCJ4mqg3+6X+xae4EQAHPlHYO9PYPqGKKR2JtSCBXiH4+SuPQFvnLILP1JE7t
	KU/hYPp1ehRaP68h3iB/pm64zJJfiXGZxmJ6Filw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660570852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPjOa4CNOrO+BIOBMl8KzEeXASd8I8GcoUR55Rw77T8=;
	b=VHyltmcYo2zVMG3Psfti2DG+rFUTq3kT3SG0sjdH2iCf/SHWWBTN8tVben64yMkC
	y+OXzcOkr+7xsNA5g/7MtW7uUa14Sy7LrVZtIbjF4g0Nm6Hw4ewJX1NYBr3wKvsLKg5
	XSeCtbVxzpMVZbiIGh4rPurpPWDP4NWsjRL2pIl0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1bc5cdb-3089a5e7-98b6-4918-8374-6c4d595ac4b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e80f4fcfa5ebeaffd56f28c55e45b3b7f68df7f08e24c6e2bb136d0f0860c22
Date: Mon, 15 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660570852
