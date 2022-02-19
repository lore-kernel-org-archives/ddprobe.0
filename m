Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B90957C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645308084;
	h=To:Subject:From:Message-Id:Date;
	bh=Othy4J0hWBVgCAlA1CHKt445VXsswPAXwoGOED4EWzE=;
	b=R0AE67AHHSKEX+b/ecg0qsGW6L4AOC9DNFPObKNLlFEq+zma5J2n1/o5p5Pimvxd
	SlUNnXVRsm9mCvOPpcw6iH9PqwQjGo3+9oMBFZ9FMWFFGw6NnMDswSNI03c1s4xAUYI
	qalh4EAW3mGXmUJiWt38crFvi2MVYdPgS1Qz7mS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645308084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Othy4J0hWBVgCAlA1CHKt445VXsswPAXwoGOED4EWzE=;
	b=Smvqb+PVkuKpWh8KK6Zerjn8woBFA20kYsHpNVv6tdHKYThZhkrDrCjjYt68dGU3
	3mZnpqJ+cN4o8vuQhnK3xXYlhlyLsAqLQZlRO7o9l5WXJrpqyTnIjlTOR9oFkiJtWXQ
	bqn/DzGvtlE2rXi2M6tKoFp0GiqpYaal/a+lIMMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f140101f7-fc69d4dc-aeaa-4b2b-a355-622b36cdd7a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca1f231faf03a0c0aacff976e44313b12ad3814a5e6615dde470c741a209ef2f
Date: Sat, 19 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645308084
