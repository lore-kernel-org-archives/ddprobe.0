Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC2EA23
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 01:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651888078;
	h=To:Subject:From:Message-Id:Date;
	bh=HnyaeZ8PQnlxQJmWxG9LO6uJ8Cw0hQ0bqMhCTVWdUuo=;
	b=l7QOpedwm+r0jb2n0ue9+LPK3f6PCkjT4qsaqALloskSjCecLhg5xPFS8GJZvlPO
	hXu6U6mRIi/IIObIhAzRl8hpv7GBQdyIxDLWEraNcqKV+A5pSjqth8yf914yTdSwFYw
	yJU/4ttrxEIH/00MQetk+VZ4l0sV+QbC3iXIeLPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651888078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HnyaeZ8PQnlxQJmWxG9LO6uJ8Cw0hQ0bqMhCTVWdUuo=;
	b=Iz7ZRQ4whq2IgvdcSTv+7N7ua3WQsXh2VrCfAAPHHxcQfj/2f8xHXAA33urbT9Xy
	UQiNv8DSB05Imwy6NOms4V3a87BaYTbvryDa/udilBnJcHhoi/Xu5+VGVGU/Ym4l+mO
	NCxrtAtoZoUoJbpj+1N2hEMsF3dpLSwqcRfeCZks=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809c33bdcd-348e83dc-1d31-4c5e-a26e-5cdae03f8fb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2ade19588b9960f0683d7d159535d8d141f896a8979187a08280b60c914f1bd
Date: Sat, 7 May 2022 01:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651888078
