Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D101103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 05:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652766419;
	h=To:Subject:From:Message-Id:Date;
	bh=9GDL+BV2/GDAuhiXzoZtgFYo9Ow5JlX2p2hrpG+cEGg=;
	b=ZrB8g6j/F4kDYJFFFxyqwwFMgkgwotD4rdMv1+O9gEzkTDXCS6XZkjkguz5Hrs0R
	PdvKwLNjz0drsbrjpDXyXlXlIT04QPMROW9oF+KBwbYGyvNeTA3JV+QcMrOOesdZgCz
	9YEvNtMZDgFyEvcUTFe44hoCV4hDNsgKLpVAXmx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652766419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9GDL+BV2/GDAuhiXzoZtgFYo9Ow5JlX2p2hrpG+cEGg=;
	b=J4IWp7BJ+XZWfKgcP0FAjPH5qy06cCkSwYfzUT/D7yjXq0o9sK2zwdpSKZFrmjFn
	xqh8sM6PolVAXOI0ofuRCQdTmhzLQgQSQoxIOn4KGK5dKiVWlr97/iiupdF3lbC/LHj
	o1izO8nJQLRoc1vZgcjoAiN4OVSpZROSWCMOJ9zE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d08e2902-d758e1d2-b08a-45a9-959d-bac158ae0539-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19131fe4f1048d2381974696460d39d58e6e43877bdbaebd23f2168c35cef3a7
Date: Tue, 17 May 2022 05:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652766419
