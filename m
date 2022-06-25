Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008104A10
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656196612;
	h=To:Subject:From:Message-Id:Date;
	bh=d4ntYK3s4morl9GC4x1VPAwzrFpqi/Pija6kmodjzZY=;
	b=Q+nVtYS8LVfb9oPyOQ71D3Tkiz5ga9OQdWFYdx/J7t4V4qVFCezEcvCzb/d5cAUC
	0CgFyH7NlIxVkYOyop0u+ZSxw6IENwHeysBSngxiYhrnqMW0w7ftGXG287OKIFGtN+z
	EVCEqYYAk0Mn98AHZy6jB6JRzdpL25ArhQEl8HUg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656196612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d4ntYK3s4morl9GC4x1VPAwzrFpqi/Pija6kmodjzZY=;
	b=bXmjVGlYtTmDHo8J44FRFkyhLdzAzadpVBS5Qrqx+u6NPTWCThIcJbgnvHV3FsyZ
	fb8GDRRjpbmWdfPZF+PsrZLTP6vroKKLwCjoUgUZuUQE7acMpN/MVR9KJZh6fS9Kmcu
	GyTxPjtYx96T3cez7rW/90Y99POOK55KEBBQgBWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819d02c0d2-d0d6082d-faa3-4681-bf48-ff7a0308850e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b99fe4f0d628affec3efb18a836529fe8222a590effb4c72dce6ad063d33ea71
Date: Sat, 25 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656196612
