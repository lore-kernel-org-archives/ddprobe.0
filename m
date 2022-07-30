Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFED29B0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659187852;
	h=To:Subject:From:Message-Id:Date;
	bh=aVzqumQzKHQDe8CoErfmb4emqTMLKbwKdDiJYAj0V40=;
	b=UB9XwRPjCyF+fJ8tKE1gkJ3ki//AKn5HmmaL0qPHRRv+3Nc2kFDPOjD6q5LutSfE
	0I8qPL49WTuqPb5kX1U2hUBYfHUw/WsxrXdHMX+6+DQCzeB5zDZeFYfn/0af+xMEfYJ
	sjaTEMpC7avIUpiP/pZkahmLJ1fM3FZ7ygTpzE3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659187852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aVzqumQzKHQDe8CoErfmb4emqTMLKbwKdDiJYAj0V40=;
	b=LhIfxSQP/SIxJdetE66yNYNT0iD/5zY3FfIdI+CNTRm9xEyfpfExH4y1mHf2cezV
	JeiafPE6EpzuHkAyKjoGj2zBJC3IkCSI0rw7ocwhnqUpgmBwRRB3Rkhz8NgEUWdIxiF
	2AJvVkMfD0Tm1asYYGB6Y7f3MzLKtMoeSbs5bLBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f4d7590-eece78f5-4cd5-47aa-abb7-062e988a1cf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8ca8e2cf3b11f186e3a19985d8a2e9bd42980f731ebbd02a8a01b102c925558
Date: Sat, 30 Jul 2022 13:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659187852
