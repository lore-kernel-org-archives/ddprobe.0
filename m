Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B777A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650666478;
	h=To:Subject:From:Message-Id:Date;
	bh=P2qzoZd4A5rMrWtlEAO6ETbgTcu16IGnm0R9Q2O0axE=;
	b=W5LRtl7xOM/pGEFZ9afabQjUGUCEybi2Xqo0aKz7oJ1gG6LMV5OolHGJFaKvQzti
	IzNCNodJZbB/iIC0d5wOvZCPUDgHFCB/QkgKBBqr+7QiLX3/RqpVvLitOGIjMpjyMIf
	hem6+XegW+oZeaGXDmwj8h+qT0XFIk5Lkqx5NCBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650666478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P2qzoZd4A5rMrWtlEAO6ETbgTcu16IGnm0R9Q2O0axE=;
	b=Ua4R/zTJOV5Efgf1MbR2TuSfJcSmhyn6jR45W5uzhYBGQIsl+gcRY3nJTLV7p2GL
	58EMSU/3Fv9R+SZ1to6qrFLdRP582bzdXKdOj9ipd2s+3bnMEaGJWyHq0J5+FZIZ19J
	POgGdkJbNQSdudeVftGre6IkUXpUGUFMesNxoqoM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018053639ad0-7473178f-a21e-4fe8-a507-13d038eae05d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 804cf081c463e267410b8e33f28d5b8fc077a9eba37510778eae575fb535fee7
Date: Fri, 22 Apr 2022 22:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650666478
