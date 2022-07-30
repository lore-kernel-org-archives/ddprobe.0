Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE5723A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659160852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZiVVkyNIUIZwXg9Xwangi3E2iAqpGY7Clne5sAVKNu8=;
	b=WHwK/n7R5347IJlgGu0t/Sn33wGe85x8BgDr6ckCCJ8qZ/J6vptBE81x7FZ3pbXQ
	tFN6XiMbyhkphKrUIPR4p49P4iWkNwB/82HdPi2ah6/9xVSv0K8gUZ99fPlgb94J5St
	q9/04ZNhw7qBHP0dFgXEt6A0S28+V8to2RmRmnzY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659160852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZiVVkyNIUIZwXg9Xwangi3E2iAqpGY7Clne5sAVKNu8=;
	b=QqLIwVDOM/xJXvt0kc6Y1Fp1KSC5QGC7+VoLB3P8hb/RicEddGTLg/gXyLXC49l5
	MFlSVKbRsa6MNuG1n+FTHJpqTRf8SbMXf8jXBWJONW7u3wNQHoeKpNJI4pJQ53cqprw
	oc1GzfomaD4Vq7VU+VYE1TefzNi9NDao4DXquUvc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824db17853-1e81b1ca-0a49-45c9-987b-1a2f55c484a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86f611703550ddcdd30db3f7ff6e5e16af8c09869f3e89bf6170ca6a0419e26d
Date: Sat, 30 Jul 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659160852
