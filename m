Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B997C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 10:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654943699;
	h=To:Subject:From:Message-Id:Date;
	bh=o6BFgE+SMX0MMP1mUWlA0Y+gGBckq0GJHTzrm/6Hf54=;
	b=HvOcoH0ndRlRLrJjJUaAUj/MPj/1s818eFlb1KPY6fdXAMd+xbxFLgsdgGxcb9SY
	xAcLzCZIP0pV87AcULJSlGger0ojdigdU2skTslyHVnIT+WOPaC7Gr6ZltQ1I/1Vh/A
	mdI+OewOUpRlN7PDxs6gymU2Oy8lcpKfoDREYReI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654943699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o6BFgE+SMX0MMP1mUWlA0Y+gGBckq0GJHTzrm/6Hf54=;
	b=EpISx4Y7shjWAMTl8wmX6ukZPULuJiWAKbOlaCiMTcGI6XfXRDK73DiovUlD3+0/
	DEsweTmOEmKqGYguJ47Etf3/iZH3oxthycH/bHDD876CFodQ7fP6SKX3LlLQqU45Tg0
	kQRAMhZ1e5KE1iNuyZ2wKW2zftUhO6M+Pxe6sumw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815254d147-7343f476-1834-41ca-8c09-a726bf2ebfcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22391b60e580f1e89651f80206bc0ef3c5c7430bbe4205c36f1d2e7bf81140bd
Date: Sat, 11 Jun 2022 10:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654943699
