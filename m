Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679D97F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659490852;
	h=To:Subject:From:Message-Id:Date;
	bh=s2SAhsCWsM/bjUaGXF0GuZXixPBMcQjNJAyrJRpa6uo=;
	b=ink2MQy/B092Uo0KYPdnWrkc5USUlSnY2z9wmGu8ltfwDrz89MDe9vMZ4i8VleDK
	0mddxiGg0d2d8UflD+WwEdpXaFCBuAceaHgxNDKiJq8w9DjwHsjkkB8z3u45wvDfDov
	P3TLzWAeu7NGOjjb/ldrTraHJBgNknM8NE08wQp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659490852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2SAhsCWsM/bjUaGXF0GuZXixPBMcQjNJAyrJRpa6uo=;
	b=cy9+HUHs90fuHuW98sHIO56WaDjPlwoH9HCMPnfIn6RW/FpdlepAoVBTVdYi8RPq
	q6NMfn/NisgsOgSCtnfqpDCUwVZX+YqwkeJPfOPxmFH+LgkMW7d3y45FVyr4yli1L98
	tTeqJZc0YLlTp58ye072OibIgvfOEnYoa8YvPejE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182615cdefc-9230b771-bf9c-467e-aeff-a3b85fbdce26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e744bbcd407ce2bc872ba365ba087b120ba9699595d46f71034cee4eab1d7225
Date: Wed, 3 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659490852
