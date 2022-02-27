Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7348A3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645994484;
	h=To:Subject:From:Message-Id:Date;
	bh=bIp3/e/o0dv+ow500kjvC5JKWeBxi1VOrVld3/cbuUc=;
	b=URCfoX0C8Dqsx/uV9ulIVuS7T1r8J4O5vlhiI6tAip7CKWz4DFijh8sAtokO+Wys
	ls0TaJ3BhVFrFiM3x5NLOZaqlwJ2LKXvz3A2p2ye6mSE2otYfea+r7FnQetlyX6bP8v
	5XkLpLt2a/2UYxSUDwJarMjFR09QW3obWN2pUc20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645994484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bIp3/e/o0dv+ow500kjvC5JKWeBxi1VOrVld3/cbuUc=;
	b=GmxDKgMRmu+N7Ie2Bt+k5zNZtB4ZLJUyICXjczChJiT+iooBxm86PQkEmTkMHmIF
	HX1RhCp5sc7k6rZJQqAy4xo/TtH+H8S2tSzHQuqo/SEL0op8Luz8EHlRxHKbAcx7PX9
	x6k+JbbacMPpMm4TflfFcbZhay3ra+ly35ZjPBlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ceaa43b-1e3aae4e-8eed-4679-b79f-c3ec687e5ed0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7f0942062cc01b7d862bca005ba9769843d4ac2738cf4b3a970ef13530b3299
Date: Sun, 27 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645994484
