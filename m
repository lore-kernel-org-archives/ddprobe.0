Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44352ED0
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644887784;
	h=To:Subject:From:Message-Id:Date;
	bh=/2aMxiNgOaML1xTyMWKFLyEYB4T+C1o9cTlptxpMTYM=;
	b=RLVpZZCuTiIRmAy1r5TuMZiS8mvl5iNfAzEONNZqYvdz0QaZSr3LDXB5p0ffYPjb
	jC66zZSjVUEiSFjwAbd0kaFEeKLaenAeEbve703Ms2+fD2Ic1ugAykxksZKKtkgXHCY
	5LbftKW1dCTuOboIjshue0fm3maUr0jwATz6US98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644887784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2aMxiNgOaML1xTyMWKFLyEYB4T+C1o9cTlptxpMTYM=;
	b=GP5VCCESHEZNtRFYBQqvB1nZCJo0kcgBTZdwWaP1lerBV5yFJtYhk8C3LXNO+liM
	/A5puj5JyCwpGGmM3pakZ26vM4xTCbTsfDU5f0Oem58q7r3+s3gcTjJIBgA269HtQLu
	fKg1/i/k12BDVKY9ghTvkz2boLO9xKOE+cQR+m+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efaf3bd33-b92a31fe-fa8e-43d3-bf25-7229529eb3e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f8307b5649211c4dd930c41d6a04ab1c52c16fee1d6fb28d9557fa8edc70e82
Date: Tue, 15 Feb 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644887784
