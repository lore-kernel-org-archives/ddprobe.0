Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5C7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 23:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651100818;
	h=To:Subject:From:Message-Id:Date;
	bh=ilMO8HKPd8RdKxQYMm01r4TsXJp8aXep3kKPdpKyX40=;
	b=iWSZwUwOyYZZ1qdTTj6L/f7Wrj/xUpyxVt5gtN6GT5lZ8anrDT10/dtCaUcwDwoF
	TCH2dyvfeP2+C9+cYo1LbIJjt3e1E1z5v6jbU3NgNKXjDUEmsRckvupdENwIvRJPcZz
	nXOIy3hfEBj9rVoUVvNgauLqJ2dUftgrdXB+FOKU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651100818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ilMO8HKPd8RdKxQYMm01r4TsXJp8aXep3kKPdpKyX40=;
	b=Hv0fL1uB7KTb+UD2/MZUULVu3ReWHT1aDfVcwdz7NK9ToApzmvSPITem9CU2+04q
	srOkI+kWgdo5vCp7p8crvnET/gtKEavHG/BbagkHvX+ILYg5zzbNOgYairm+Zh6TON6
	yfAckExlFKV8BXTgN87MzAZaO21Y7XNj+Lgc04NQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d471b65-de3eda43-1d5a-4313-a8f6-9cd7924bd161-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aed68b7915b5ed4be418a914883d35905f2c1eaf76587c78ce8ae2ee6594096
Date: Wed, 27 Apr 2022 23:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651100818
