Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2040580E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 21:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655759099;
	h=To:Subject:From:Message-Id:Date;
	bh=AuCEx1TjuAXUMEA4BY4QlclR1CQP2s3wRtx7Kr908iQ=;
	b=Nuh9tpXV7ygkf1l92Difxu6zlRhlp0TQs63fdYIMLl/6vo2LzqVk+FPKH9MC/hfh
	jx7R2JS2p76Tp3fZsWh1Uxphjk9VYDfxCKPIvupcdGx4k3QOi83YtcHUst4cL6cctds
	EQkLo83AH/pwvDXfN76b/NT1okc+4mIDu8CNLRns=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655759099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AuCEx1TjuAXUMEA4BY4QlclR1CQP2s3wRtx7Kr908iQ=;
	b=GQuHrfg+Mt6KAHpul8mCKYnI6Ztv2IXxKp2dN6BBfeZvlbs3VQ0MaudmPgDdACVo
	GseUCnlMA8636XquCZ4SXowyBu6nj+cjeLQS3bqC5EKTzy36NsAqhReNi68c9/koyvX
	8NSTU+BJM4PQpiNpTALfeLSe8rViZr/7vYiyJ4So=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182eed569-84660e79-2413-46b2-bb44-0f7858f58266-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bf5b11ed467e6d93520ca3c46ebda35438d002ed18fa8515d249433a6c24cf7
Date: Mon, 20 Jun 2022 21:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655759099
