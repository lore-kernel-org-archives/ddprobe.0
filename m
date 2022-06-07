Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E903B7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 01:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654566839;
	h=To:Subject:From:Message-Id:Date;
	bh=/Ks3CG7dUkbrL4l7XIRm+0D5KaxBJqbUgEfKtJlHLcE=;
	b=Yqm31LGzgJzTOW6hyY+F7ByF60pqE4h5IRG9IpFdtAzpQsJpBYWT6eCjuoyLlhhb
	mteLUmKp1O9v2ZBs9F6W9Mz8jvoN7M3DOy2ce1pQLq/pfOEMZghzZsRnNBwcvvvRudJ
	Enl3l8OJzY8YXx/8qB3iaWzuvuyezzVYk1eZ04xI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654566839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/Ks3CG7dUkbrL4l7XIRm+0D5KaxBJqbUgEfKtJlHLcE=;
	b=fLQB2IiSpWsAJ3ZzTaCf5RP34D9SMO/+hZubstEL2EmcWlDBPuvTTEO9PFQCbYBz
	JaFhRFaLhiQuTKO4b//mPCRNzB2I7OXajv1k/p18Uy+8SLqKwVh18PwDU0G1LDhC3Qi
	U8uMbsTSHvgHsDSnsgjDGV6K3MIatKCMijnD6BT4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813bde63de-6e899285-5210-4ebc-b417-455d4bf30f42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b896ef1c5395c9f82901fbb1a469a091505bb52f025425361087220e15419d3b
Date: Tue, 7 Jun 2022 01:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654566839
