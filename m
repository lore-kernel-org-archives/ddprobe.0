Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270C53207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 13:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658671012;
	h=To:Subject:From:Message-Id:Date;
	bh=vN91d9cMlUUSTIg8gHvngKTiduoRPwWEOb5FUzPFkfA=;
	b=Hc5KGV0fFa906I+GtuKKJekNFMKrku3neQy3BUM57cdP6PDKXuqq3IJ+p5CiYUKE
	U7mfEV/Q4UV4Z3Rn1SFE7ngTTfq7FDsKfmkiPSbkxbs30FaPWQc5bOmlXUZBrCDI3hU
	s45QefaOI16JvQlUU03tC92AuL8MQXXMmm919gv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658671012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vN91d9cMlUUSTIg8gHvngKTiduoRPwWEOb5FUzPFkfA=;
	b=MIEcrODgFT0Ihj1TwvPqB+ghrDvfa+xhrx1/18MYBPWr/klq/8hhk1egFG6UTB4D
	SDE0za0rnw7torjcVP+rhIrocwPSvk6Wov41o9+AI7nQoTwQy5P3LNFprGoQi/UzR1/
	oe2ocfK5GhHLFdfy797iCG1oA3NjIihamjklJZCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182307f19a5-76269db3-cf4d-4a45-9281-8b16ba64cff0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27dc6f7a621c3a224f6e0d74368bd85c0579574d3352297b9cf0df1ed4fd4b0a
Date: Sun, 24 Jul 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658671012
