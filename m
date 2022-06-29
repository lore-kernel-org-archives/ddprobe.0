Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803BE29AB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656512212;
	h=To:Subject:From:Message-Id:Date;
	bh=eZt7HUn/194roPWhtjx48JcsA38V/07atHVuXDcRAoQ=;
	b=D8ym8Ib4tYl38GVXeFZ7LozWV2o7VFGlDOEuVQ0bewY4m0DV+SEuXEx4xawPkFUd
	Spd+D0M/dHQSuqHnGzFHmXqIwVhXdUnPZta6i3StG0D3ZDD2gk/ySmfW/t7RwR5ujBZ
	/QAeA6mbZm2MQ2VCa2AAAMHBrWBwEpy/vZ7sVm8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656512212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZt7HUn/194roPWhtjx48JcsA38V/07atHVuXDcRAoQ=;
	b=Ez+7vkZF2Z9/zUCeWDBhP2QUyhRNErXemaogyOrdZ3t7+djkDasz04yI2Xmhgcwn
	JJ+TLOXzmpjhPri3n0V6z4z5rVHqgBCbErb4kzgw7GVemNtHNpEOCo6CLoU6FhLkzoU
	onffCV7tyxQiYafc7RGrpIJzss3n5iH6cq92xdKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afd26d2d-5409eaee-2273-4231-b949-8f25819f6b55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10a1cc7897e1f102cfd85bfdfa0e5ad6b8054dcfa26fffcb3101052dfdcb76e2
Date: Wed, 29 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656512212
