Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB9A7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 11:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654946939;
	h=To:Subject:From:Message-Id:Date;
	bh=Ee/ekpQ6GeO3Ll41lIzuruKTV7wPUEpPBwmmFVdLbNo=;
	b=FaAT2xQXM/RF0y+ewUcf0BbZ3zMGOwsfcfn+euQ0H5J5q2YocNeP+5zm/zjs/s2Z
	mzwm1YcMEK6bNbeJ96vZ0SvudaXsZh/chbR8n5mxJOx0d4uy9PDyRRUOzYcQguQA+kP
	DwshcSEDHmq4isqcBPNM/9Ml3QOVPJUGMy0RNPDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654946939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ee/ekpQ6GeO3Ll41lIzuruKTV7wPUEpPBwmmFVdLbNo=;
	b=gPS6aDQ3Zan8VVltDlUAqlWqcFqhFLQbYg1uV8QLLpxyvU+Vl1Cu9HzIHZf1BqTy
	fGdoyEsE38TvT13uPY5QYup+2cXC7DJz0m8ygfcPusLQ8CwFm/b1DLF75M4HeyQm2X7
	6+u4FZvrij5Qz0HaljGAA75n3yd5DmzVn4K33bh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152864177-3944c3e9-71d0-44eb-bad3-eb94e145a54f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ea036457dae582c51557756fae8b2089d7f5380f61e7e647db8137ef5d8aeda
Date: Sat, 11 Jun 2022 11:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654946939
