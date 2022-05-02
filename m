Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078B03204
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 20:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651521958;
	h=To:Subject:From:Message-Id:Date;
	bh=Zn8N51CTLLjgM9mVOf4npd+g4C+5xJVG+z91czGNZac=;
	b=iqnyuRTWq9IULO3ieMNWpsMJgI2PvDo1D5T6tm25eSxk8KOu5Jj1ucjjxbj5p+f1
	GGu6AEvw49Nj3Bx7WnZHPK3kRZKUTmsbL+hPmogbDjxxn53TtyFPWP1LnBoDjg4uL26
	q1VzEQAPJGqhXkc0qL4bwENW2Ik4+kTauK7IdHaY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651521958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zn8N51CTLLjgM9mVOf4npd+g4C+5xJVG+z91czGNZac=;
	b=QIqHBhXnJveF0blSZXUzmo+OPfI1KCatTVfjqpz0UbpBY1DYX08XfEdnzzGHkIQi
	IPQIxouZCAjZSY5rSZk/BqN0oi04lxUdYdCGPsDJA/TeVS7yIxMxY2dxXMMOoNsFTHo
	xLK3XX5Fids8zlLJ8zwJ45JzgXfGjRsrjpgMSzso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018086613173-8eb2bbb4-a4d4-480d-9e4e-24da84a3e00b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 499b8cf406905e48ff5804b229f57b06c22d3918ff7580461f99f4709105c203
Date: Mon, 2 May 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651521958
