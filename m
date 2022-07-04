Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A62E428E1
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 10:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656930413;
	h=To:Subject:From:Message-Id:Date;
	bh=fl9NVkfYIn5TkRqVTeE+SJJrkLMN2kr/SU3OzwaBNe8=;
	b=HzJQjMm82BG1fTufKwE+Drm8TdfjYhO6VM685Gy5MUG249Bc0pl8Rh4axtcvMvSl
	phOTH0snjKn+KQFAH04oaj7nM2ytxNfIJvKUG6BHyVESYUJlhxj5FEmE4A33hpbSQHB
	MMCDnjYab9qgc2b2TdkTn21kuCa/3R7hR+s0Z/04=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656930413;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fl9NVkfYIn5TkRqVTeE+SJJrkLMN2kr/SU3OzwaBNe8=;
	b=L3lajQkE3u53RXpPperLarLQiLs+ORFsAUDUxMMxJdleIYyFJAfRSrztipmJL9A1
	rxxfczRpXvyQSg4UPKhILDv14Fh2mjkBNbNqfHwDrOTliRT0gcmlaqZJDPrAQ20t1zJ
	gKjR9IuQ/odCgXE+f4yJdyz9pBNTk/SyY5tTHwWM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c8bfa77f-8a7699a3-bd4c-4fa8-942a-f42b3a4145bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5781a9a826c0987b614ed825f746eec337f62ba9c4e74793b29f9a4e15d25f65
Date: Mon, 4 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656930412
