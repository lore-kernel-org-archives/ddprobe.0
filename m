Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5016723D7
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657212412;
	h=To:Subject:From:Message-Id:Date;
	bh=CV1nwmGddcEIu74ZnUTyPm27ckf/t8cEf4/4z/4dYoM=;
	b=kX8cbj0Hy3hOHqo9ANXC7RVyKcfrpJUnjf1XxY8RYzLIDHMnaoonxwKaG+CHEX5B
	ochxIr9F+q2caqYA/BqokPYe7+c3AwXmpd6moou7TJe2BFHER0htg0IcpvgrVYgFpaJ
	TsSSvKj3Va44ynvYsSodDY+B4bzm4Vk/fNYVR3yI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657212412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CV1nwmGddcEIu74ZnUTyPm27ckf/t8cEf4/4z/4dYoM=;
	b=O5sD0P/w48E9aebsIErkXqwYBI/Ow1MFh1wHMuW32fQi/Dx1SButz7ad7PSqK8YO
	/tK7dfwgHJYYgLQAj4H4WEy+VY9JYQfIaS2RbwvAQMcyl+Nn/DKfoR+y3W9/nPFPFLK
	YsJY+Sb7BvfG8t1bWlDoD5JRmBrf8wbaE+OG2wZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d98ea1ac-552bdfdb-32b1-4f87-8f01-758b61527627-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c89b74db2f795d2c837174c2a3fc4d944dcd9979c0c49d8a366ee5003608e2d
Date: Thu, 7 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657212412
