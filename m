Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1018A15AB
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 02:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653879479;
	h=To:Subject:From:Message-Id:Date;
	bh=UEDPfo4e51cBHmTddU5p0t2d/K6KG4hjKo06IY2127I=;
	b=DB86RaGpnuQBUE3M+0rijOVSMM7epPkBHBQmkfFHpXp8kxc8BoS5qs0SK7qIrXkM
	LI24fMJMU4fjv0IdYiY3OuGKFgiK2Ul7DTYKk8UJR5vsLw1SeDNScfa6isCwRpb/EzE
	dVl+w6eKyPcIKAX7YnuqSUxSUuh1oFnJFVPNaA+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653879479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UEDPfo4e51cBHmTddU5p0t2d/K6KG4hjKo06IY2127I=;
	b=B3HSbK7LB1o0BrXz4dZ7JXnVAMsXSPzS9ebK1bxjrqWl7xfpkwznoZvqaPfDLd+0
	kU07zYu+bJRON1WwYUIx2svElbhTRSaVTvt+FsDCFqWrsNYRPOmFudrX/1GZepZ+8oo
	TbISGp5h+t6yKMbQZ30UQ2HvcT2rEKurAB6OXFRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018112e61c2f-aa105289-0a02-48d5-8012-f8037ca04fdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed7a9b2dd3fa36b28b0eaccb3baea69e314eb0a56af4831f3bc94723a6d68c70
Date: Mon, 30 May 2022 02:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653879479
