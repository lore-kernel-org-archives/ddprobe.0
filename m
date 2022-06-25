Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B26815A4
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656123412;
	h=To:Subject:From:Message-Id:Date;
	bh=mJDRp2NGHHdcCcC33rTDh26YNWMTZ6xU9Ii+CEoY2kY=;
	b=WxEJ0gdGYEiQPdtkRONqJ6jGZTcCFe5Zafh6S4otsfno5LUdtQVDfJC5dtg1HN0o
	ZOzkYbRn6P6f57I6MZReqn28F/vmqvAGQNpS2xKt/mSNmSZA9Wv5G3PnxMsQg9d/TdP
	cpVcEVaZOngnSQTlhIW4dnoFz2Y7wN28p1KxNoow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656123412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mJDRp2NGHHdcCcC33rTDh26YNWMTZ6xU9Ii+CEoY2kY=;
	b=LcSPBo33ifLbFtwvJXhTMINL1GhtN+x5vDOYfDch0qpuGepvz4axx1NPFvbOyJn1
	KNFhxOu/HkhhaxmDGAJPY+IN0uERiu928EAFSkBjSFh0xvc2aATS8avLrSzzLd1eeGa
	RoP/H2gRlIPX2RjpUTJl41rEolbUyFzb1Be1gXgc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018198a5cf5a-aa9b46a1-fc7c-435c-a060-ec55e1eec424-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb2e78fc8593c8665888f02cbe720e39f1918df08a22fdc328e3dd8027c8ed9d
Date: Sat, 25 Jun 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656123412
