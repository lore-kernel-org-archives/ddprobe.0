Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E659806
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 10:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652610719;
	h=To:Subject:From:Message-Id:Date;
	bh=SOSbQ/LD16jYvoMv6QsTZVun2e3jN2KzqsViVugI9Ok=;
	b=XKSwIakywluqGpgqh6KZg9DjHyXPZlAoxNvhhaJDRsQ7XBGYynW/zm9iob02fNKb
	01ndxIcb1wALy92olWXvTO+3N6oge8mWLuNJu2S8xzvoeCEjt5xDhxeR7AoVQS4N+gy
	6l5ShO2YVm1N+K/Mq2VAmWGm/Eu9fRbOknfU0r3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652610719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SOSbQ/LD16jYvoMv6QsTZVun2e3jN2KzqsViVugI9Ok=;
	b=U33Y2H6XBfH2egKGLCU+zyiBaWnUfjTDsjV6RW/KYGKzn0Cp9hek/hU2YKdaqqu2
	tIMvIVhIjb03n16XUteaRM0dRDNMTmd1TrF+I/futHKiyeBkSTfEno45X4Vapb6Nih+
	Z8+cnW4ZYrK7aHid/nZwG3rKZ0eJjpCfDK1Im2nA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c7465e49-852c0f64-4046-4b46-8a19-2dd7820a08e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1af16bcd98965f51be1d9510efc07662d00321653c4aa835d4db6e79344a3c60
Date: Sun, 15 May 2022 10:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652610719
