Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97E1FA6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655994412;
	h=To:Subject:From:Message-Id:Date;
	bh=xDw0dwDR9A8yvGZ/i1qlhW7ThgJwcv+jjWx64SCSqTc=;
	b=TmBwgUuaMe909euxMm5ybVSUxHzbhayEE4j4AY5IOa+65KeDXimxVr2Aoa2L3ng6
	11AXYG7bM50TavI/c1ORIhCIcb1D0lkoZ6f5ETKuC/aHCCck2xf+6K/2aam4hKRj61b
	pfjQ4ujD42WEb2ZpqEKzMOpIOfJxJIDVI72e4ZoI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655994412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xDw0dwDR9A8yvGZ/i1qlhW7ThgJwcv+jjWx64SCSqTc=;
	b=DLX1eL+dlctcaXG4c+FDt3sNdFbV5FwFF2jwkKoqBWBC5g9E6PWcIlcoOVEQQW7v
	z/wtU/foSn4DIcXSgJsOEFTp0molPcuet+A/gdO0Hri+q6aE+iSBHqsQ3ZkYBCMwXfN
	oe631n0CwlQVIKgRO/mfGfBfm9eR5l/F7/zb9yZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018190f56d30-814ad7b7-1219-4b06-85d6-00f1437d1f9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1af403f274840604450efa977ccab403086805495e09bd7d739b2ada655ee7d1
Date: Thu, 23 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655994412
