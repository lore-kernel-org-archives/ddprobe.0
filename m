Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE0EC33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656455812;
	h=To:Subject:From:Message-Id:Date;
	bh=9E5EUq4BbHfBodqZ0z54yW5qcWF0VFS6EGUZKvWCBfg=;
	b=R1FHKqA/UL/N6KN3i7v5hvP3a5fnwlRgvUtKVpAsEWdec5Qe0waQSEKAUv89Pm8t
	alZRRRjRz9WbbCtU5G14G9Y4ijgnYWgHq9k9cED91X0sq9ANj0ivqNtwCErc1TAvRyH
	MN9apvNUixCyTulau+z0H3lqNYJtk69C43QvLBsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656455812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9E5EUq4BbHfBodqZ0z54yW5qcWF0VFS6EGUZKvWCBfg=;
	b=kCW+9HezZHw6F1DcmOiMiaoZ3tlzhRKCVRNCUS0DGzN5R5hifnecXn9PAjF4vagV
	pFVb0Vqxo/JBMF4reKhM/fvZavAfVfzNMRE8EYdnqKL4SG8N2rFF4E0RCjCumDT6c+P
	Skb0IMqPWz6oXv2PmmSEqVelDiAyDJRtnh6PyVSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac75d4c7-a4efaa6f-cdba-482c-828e-420f1a2aaf33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20bbca8962c8fe4dca325da8ee32a973488335547ab28be7b63810e257c7ba51
Date: Tue, 28 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656455812
