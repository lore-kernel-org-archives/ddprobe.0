Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C9B7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657307812;
	h=To:Subject:From:Message-Id:Date;
	bh=Q/6tz4bLKicb/LXEx6uxOJ2tSyLWn0HsAXE+bOY7dow=;
	b=YNgQmguataln654ZLZOCFPwrt8k6rNewc3iArira6zi2Jkt9Qk3jow8cO0MAtXYA
	fNjeyt84zrz1A3IoPk2IdlLAQgUb2ryDuVfWEAQ55PejjyEEJhAVvLko7uhbShQqJCn
	u+kfiXP50uZ6cSJce2wMmtx2m/TDRaAQ65GQz1i4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657307812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q/6tz4bLKicb/LXEx6uxOJ2tSyLWn0HsAXE+bOY7dow=;
	b=gK69g5h4t+dk3wjKJ1fyCIVZW8rhShfLBhcjDTBk1mdfkuV/SXYEgv1Xq1tGg82Q
	pnJDkggCDjASNslRYVE4xSvxDCgWL4Q1xG+I75TuXG6ryry01KSQVRApthKuVe7C8oh
	UK9DYcnJx4l3Eo3kIVH05s03n1+hsQ7XfgBfzKOo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df3e5213-cf9338f6-1d5b-44da-96f4-b97dd7d3c291-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e2235995fa7fe429bbcd0ad06470d2b047dd68d58b19f9cf2612afda869f856
Date: Fri, 8 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657307812
