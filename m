Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04BEF7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 04:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657947412;
	h=To:Subject:From:Message-Id:Date;
	bh=TxCzOmH1/YKdFI16gIv6Urzwik/qsAbkH971TBMo3wY=;
	b=gszFC9Ucq6V24ZspnZGiKOnYKnQawQ5OcY/qzxJUEj375cELdWE21o5UfO7/qqs1
	g8+s4J+ZvF37giP5EjMbWizLaH1UOHTBP4qY9EtXAHovQsz85sdDft4Agve+fPyKFNP
	Y/a0bti6IVT7EwFUlXI/qeDSxxD+nSZH0RJ7j5rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657947412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TxCzOmH1/YKdFI16gIv6Urzwik/qsAbkH971TBMo3wY=;
	b=hgQQDjIi73ec0sWayJCu35X1G5XcSjdm72Qsc/RtzvERzTXjhZpO53ej464l9sBA
	q2GpEXRsrIHPoV2woUprqcYi8RkNVcni2S9B1sJexs4w/FWZiJliJvDv/lBfT5fMXc6
	/JwtnBKkwtp+QnRws/99/vJqMe/9i41JKg+u+J5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182055dd765-4a11b5b4-b88c-4943-9909-3715165a72b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 033e721df44f3643c7412b32d4ad7dff4dd1738167fbf1f24e3bed08a2cb487e
Date: Sat, 16 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657947412
