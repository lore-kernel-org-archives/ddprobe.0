Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FE87B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657432012;
	h=To:Subject:From:Message-Id:Date;
	bh=HN+65BtyK8s8e+zAToZ2gUn1eOUWrrdvTC9XpYwiNWc=;
	b=A0XhiHmqAQ18fyL0N7AvChD0336gAk+eZWnwSmcWcYnSD5OT7OSVsCu60n7HlQQe
	d6+TzS2iCxpl9Nbm++C/5WQ0BuYMGJDUcD9vm7uQLQ2QuQYjiXJSkICO5oPBrD2/2EF
	PINFfukWxRVJmiJP0pxMr5t3nXjqf8dIyC0FTMes=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657432012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HN+65BtyK8s8e+zAToZ2gUn1eOUWrrdvTC9XpYwiNWc=;
	b=GX6zUtzYQYwAIjJuW5cAEZ1/ID5+1Z/9+51rEAiuODyqSRfOWUrAPhm8pP6EdpZH
	SZs37MgS1xv7vrGUvIW0mWzzPOBpgFirvdAM3ie8U/Q2ysb8CRu8yVv4moHjobJVbyX
	VOpC5QUsTPzNMd5r6RrTpii6Kh4K2Vf02EX7wpiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6a57660-260c7acb-f812-4e9a-b24b-c916b54b8913-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edba4d899130a5866f8930ecf310c27d5e68dafd015a97b4267c9d2ef3bda579
Date: Sun, 10 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657432012
