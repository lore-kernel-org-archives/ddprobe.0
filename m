Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6AD1396
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 15:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655133359;
	h=To:Subject:From:Message-Id:Date;
	bh=vEy2OqW4VHySfdgJQ/lX+UgGkwzyJwbNS78fAC7ZYHI=;
	b=KmW8Fw4cDAFfVsuvHH8VLO9tUf7h1Xt7hUjPc7U47FqNZaLPbmxbxbXf70FEXmGo
	FL4BDsYjbgtr8vc7Kd6H2aRi50DY8DjfplIoAZfErS1HOgvCkCr8zkTZifCcxk3MLJo
	xfcpBVCLe7PmShiCJvMzODmaxBymMYkamR1XbQus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655133359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vEy2OqW4VHySfdgJQ/lX+UgGkwzyJwbNS78fAC7ZYHI=;
	b=gVnoCNxAqioZ79bbrGR2Ezytx4+HjZe3iSaVvpOfQX1K05bJ8wkEQZqmj7M1Gx2N
	jx2EaEaTr7Hm0yKJTnQGyex3eWj28vUSZgAzSL6rH9I7Sd6HNwD6+LD02OTAZc8TUFO
	H7dRAtZmVFPDdnEZmW0Fd+RhsFVmwleowpN3Z+2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815da2ccc2-5476ca79-c438-4c30-bf38-82b81ecda27c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4301cd2588bd12f330bfbc2b92da40a8d5942fc4765b2509905f949539e8f6a9
Date: Mon, 13 Jun 2022 15:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655133359
