Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C2A4280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647086485;
	h=To:Subject:From:Message-Id:Date;
	bh=+BAQNibW0HHoZ/kD1ZdBQxQYuqaYZS6/tYsmCS8BtME=;
	b=G/ECPr8Q2AirMU4YUmKUryo94hOoK7tmxAZb9bmqcYmCyhALlaU3mTMFTJ9h8t8h
	d1KPsrhmjHhHBdu4smlOijhQiNw2DAW23PCMruM5Nfo5VBxqsatzmJHNYAIDH/ns6Xx
	eSMrPUAykDwM6EjvYCFw1EFzVu52vUtDLNLdb+V8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647086485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+BAQNibW0HHoZ/kD1ZdBQxQYuqaYZS6/tYsmCS8BtME=;
	b=M5GsaGiryqFV6+Lh6wCctgU6i43TeA3u5sMqjqrZiq0vhvVQmsnaylzIt0afKqwD
	uwuGZMmvyrNIYHsPF23uNCpGTRW+InAE0RIfh7d0Tr4VXBJMVALVICOL8phxTd98Zji
	ZRPTrd9NA3ePXB1KuaREg2UFId/4iayjRfKUJhAc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e013d12-cb87d704-640e-4a01-b3bc-f05e5c43f73d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b7feab5e0a030fd95e37005e322b5ebf283ce028a42054121ff01d545fd8d4
Date: Sat, 12 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647086484
