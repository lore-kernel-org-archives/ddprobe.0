Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0E03206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 20:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653078600;
	h=To:Subject:From:Message-Id:Date;
	bh=Adgnq5sVth6fdM7ti1Fmme/JUXEqsZj9ZixaH7BkSBQ=;
	b=Dkzoa6Utur28tl3zBK2t7I/2eJ3Mspei8C4x4vCyKiyAwE0Xm4CorR6y4aviOJUK
	gDzXt/a8xbHqHm9I6xMttN5icZcmlScBRHYzYPwjv8DGNyHBy4dTRlFwc312bM3dCev
	QYweeDBQE/O0DRZjpA+/Ie3aAfkVoMal0WoyV6VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653078600;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Adgnq5sVth6fdM7ti1Fmme/JUXEqsZj9ZixaH7BkSBQ=;
	b=Tzb7eTP/GgRSeAH6Ch1Ict1aCK+y7ZJCE9a0hj48knl9g7j/lpvAZp+/0sB+xxg2
	CMQ0mAmj/Hg8DQ4itgCnJBF8XFrrcHUS0Hah7YP9r1K/cOl6Xn5QtnPJ3PNCiKcRk/5
	BFxhKfPVZnwoF8XS2qynkcAAy3yL/QYgT0P7z5/o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e329a667-31b0d980-c286-40e4-a0b2-6e3b2fad161e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dee72f6384faff677a14e286c68a1a6644cafeab6c6a9ac101efc88b381baaa
Date: Fri, 20 May 2022 20:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653078599
