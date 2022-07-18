Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09A4ECB
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658176612;
	h=To:Subject:From:Message-Id:Date;
	bh=im+ghf4UHYOqNFzlQfbIN2/qkdoDYqmPhseiWiej8eE=;
	b=IYESQGFyp7kHQOTMww6v2jfZ/bnZ0e8InIk+PCpLlX8eeLZ7cnQgSq9/MjFixRCt
	uxH92kAZsG9ih6yoeoCqrJfGZBzTJDP8oBo22af/jOzQHhR6KVzvxSACyWDGUBX6J5n
	aOLDVILAROX+lk3q5H1D131yqp90T2mar1K70Qw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658176612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=im+ghf4UHYOqNFzlQfbIN2/qkdoDYqmPhseiWiej8eE=;
	b=Uz3nzpSvG2uUULgT5/F2KHIcCeuFh1LZmru6DI5OuDqKG2RGgnIEN3xxTT1V6EzG
	EjgMFPpXQwnbS/JLveeDzPq5aN9pUslLaxybvC/M1tEDdMq1ASqrZ7AuAVhj90FEpP2
	UaxuosA3PpQZn97uhAXEHA6nsrzMDTkDDXal5PHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182130727c3-fa4eb2e2-acd3-4a3a-9b18-401e569a7245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8be9d8c164263d60f80f3c1eb33a4cce6653df06a1c0234cdb475c3f30dd9a10
Date: Mon, 18 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658176612
