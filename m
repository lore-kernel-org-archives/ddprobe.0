Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0057C7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 23:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654902299;
	h=To:Subject:From:Message-Id:Date;
	bh=TW/nhP250Oo0R6cx/egnoEQ7ScUBCHcAyD/bgzgIyMQ=;
	b=Lzi5N805aBP6gGCakX+90lh49VlzGhOyvW+Cg0V3Mvh2OZ8tuxLLW4LXUajvX0M9
	SdwUorg5v4AEuCTGojIaTepcPYMHbmA9yv7vIO6+nVSg4dkZ0Lvl0opeUqUsZv63yd3
	i1PT/Yk8aqEAmQz5PSSS+7CnrrjIzc7rSb8uTmls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654902299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TW/nhP250Oo0R6cx/egnoEQ7ScUBCHcAyD/bgzgIyMQ=;
	b=bbmA4gusSkCTuL7vGqRR56CA8fEpRmp1wo8e9gst4DS1bA1yJoEU5TY2gyX8iBT5
	5w4bRoKNUr6jAHIPQyJf/HV94kahid11uVycU3Jxz1w3/X5jUocBUhxPrq0t+DhL1L1
	wOcpVe0no5/8UBbbVT2quW50gFLi7P+zrslKdxfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814fdd1a38-11b571d0-a395-4320-8754-b400875f9992-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0b076b15d54a628d627a2280ac86169530b295372b32307f425939bcdae20ce
Date: Fri, 10 Jun 2022 23:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654902299
