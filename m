Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5280F36D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661052652;
	h=To:Subject:From:Message-Id:Date;
	bh=T3vxOMjL7XqUpXwuA6QSwtMlMLAu5zE+vIL4b4zSorw=;
	b=PGOHogf8bohsiUa+Dop6bnECbsh2jV4M3xITXAuPyRcHIgJfTh0pySdvW91LAL9z
	L/UkkqSPE/T7wweKjxZ/NQeyqDaYZ9VIEAlzSMP0AN3d3hJPi+GmCDXH2hcab2yAoXM
	4i/X4SB0QLWtlcsUbtptK0pY//ossNSxXaj3ewq4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661052652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T3vxOMjL7XqUpXwuA6QSwtMlMLAu5zE+vIL4b4zSorw=;
	b=O5AeKxc0EMFc06+OLNwJ0i/l8ByrYheZDly/h0cmlKHekiywMe5bo7Mt0o/6iwdj
	/7eSTPdlfHoa8WcfKdQYfWplP/xDjeEbE2iyRout4bo7l8+y4JpS8txC7zBJ62LVqyM
	otO4IJNsaUfhBrmY7mnSVcMDiR1HpryFG9yZ6mo0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be740c57-b2108fa2-a54b-47b3-878e-80795356975b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b80054742fc8ec201e6990a3b2f07b3717a758cde93be59d793b3457af030548
Date: Sun, 21 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661052652
