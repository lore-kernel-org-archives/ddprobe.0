Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05F37E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647070885;
	h=To:Subject:From:Message-Id:Date;
	bh=bdAc/9QQkRROwUPNDqX3NmWicuTgrGqSXqHIxwcvWnM=;
	b=ANaBWLASOmQIwOqmMSzckWu65ionuFv0X8TAGJ3mI3QDW++XVZRf0rpECJ3B/6xc
	132FUAg7K0maW0MWGpEHq0fhSxcIHZd6Wok1LQDReN35XKr1asS2eJenxnXqyS4ym2H
	ky2xb3wVgckysuekE2y4Uqt0Y/lEZycUlsti6DT8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647070885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bdAc/9QQkRROwUPNDqX3NmWicuTgrGqSXqHIxwcvWnM=;
	b=Waoi2QxS+fcFXALEt5RjIGj0dIsUVUhIYu1IJbKd4TjFXmASSg0deIQ7IctJy4hP
	taSa01gmaeFNZNswpHtEoj/Jk1FqpLL8sS7nACBylU9U/2nGy1RzBJ2k6B/uuNzPNf7
	4Jv3mPcSY9rO34da2M4Ida9nb0aDGsfnrxAvOT/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d13337c-6de3744a-6221-4e36-85c9-f3b6341db9ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01376b52d2956ed59e6ed2ecf4835a340a5d4d1f65f5459f38fc7d835b66aa1d
Date: Sat, 12 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647070884
