Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 106D52C80
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661007653;
	h=To:Subject:From:Message-Id:Date;
	bh=jym2879fmiMGFfqVn4oZg7SH48Xh64V2JMEDNT6tOLs=;
	b=Qdf8MbEzEwxV36ZIwVpZKosp9gFr3k1PSKGxAvu2imD0b0lJ8b25CQkrGjL/9HiA
	VXWNgqMCnT2ojb9tTMAhIllGI9oaYrogoJE+QixFfazs9oq+thNs1kRU5np54wDUaZk
	oxbikyuhwT4NfoVH+5nE1KAe6Ke78Pe56xo9fFGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661007653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jym2879fmiMGFfqVn4oZg7SH48Xh64V2JMEDNT6tOLs=;
	b=knBSIuvZHn61viEbo4ld8B08pliHfv7yZANTAwh7f7WqoO1WFV7NN0KqjalLGeFq
	wwW9qvMYp83UQ2810h6nwTNEdK4kJRoc5adBUosux/pJyfN7UfYcw7UMqhm+glpKAe7
	RaGHusNNy+lJK7ErTbXQRG4k3aCmKfFwndXAYMkU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bbc566d8-7d7bb4b2-94ae-43ec-8333-5ffb621a5220-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bdcfa40bf72270dde10ebfe129027f7e4affa379dc79389ea2cfbeb818725d3
Date: Sat, 20 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661007652
