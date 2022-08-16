Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493BA2F26
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660641652;
	h=To:Subject:From:Message-Id:Date;
	bh=NBZu3ewB3TylKk4RsFTGwRWuvbuPlNgcv+7q/8wl0L0=;
	b=Zf+SIyXFl7E8uijlW7mVB6VDnTvh4lYxLIx1UkajL5KuQumLhxRU+yaP9H0p/VxD
	I5VcRJC/63Ws/8vm4vgXM6kJAPhqdOzkG6owjW8Q+BMjJj2KLiLWeeG2dftbKOnocI+
	XHdrVZJWErUa4QDbhP3GGBFYl73EClo+AMSXc7tM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660641652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NBZu3ewB3TylKk4RsFTGwRWuvbuPlNgcv+7q/8wl0L0=;
	b=QaAM5z7lZ0omVbRJ5w/GsUzMKcOYSAzN6i9XShHl+IOLz78sNvaAm6HuiXaF1yx2
	EEhhPprNVziqmSlsm4dJGpm22K7gK6E1zt8LfFb2mKVpVF8zcx8YoXmyDxLLaOtvOVq
	spR76kgJMYT3PNWkP1NpwNMj0YZQtow2H0Xa1N+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5f4af71-2ce829f5-812f-46cd-a697-0068a37ff4e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e32d897cba7fa8d6b36d4866b72f6a20fee4ec246a26b205fb9184827c5e57b
Date: Tue, 16 Aug 2022 09:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660641652
