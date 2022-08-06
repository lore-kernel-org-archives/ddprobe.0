Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86CB1869
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659793252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ub76KbJkIIiZre8fbepQq3t5734y8uEQAnfpVV+Eujs=;
	b=OyiVeqr5t+X1xgWZC7+JReoDrOzP7zIOetUTp4+uXoAIJjAaOAi2CEjBRNDxTIOk
	nSuMQtyFdcMa/p+Cti735C2xvfjv88RtzpoPHlcWzgB51ELiqXkmYgXhbEUh5LFD6sX
	GnZ88DzxaL4cAFTRdbN4Cz/7hqoqRHPxtBZ7+HCc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659793252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ub76KbJkIIiZre8fbepQq3t5734y8uEQAnfpVV+Eujs=;
	b=YI2jJikbW9buemB6lxBRsK8AdX/6PIey9YLnMjm7Sb+TgG2X08NwGnDepGZOnrT9
	lVfGWZJQuNqyPsPoD2Fb22uS9W98b2oH6AAH65byA49fCqptMJwQaKdkHb7bO3pJBli
	l4IKOlNJUCPyfuWBb6+5JwTrtFmB0aP71kCM9HQQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182736320f9-a223ba12-0987-48fb-97da-05d89fed4b69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24ed80105f8db33bb53e0b3477bd27d9ec6abdc76e1b4b11b4e572f87bf6899a
Date: Sat, 6 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659793252
