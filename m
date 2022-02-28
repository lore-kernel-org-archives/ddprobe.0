Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6201E5398
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646041884;
	h=To:Subject:From:Message-Id:Date;
	bh=HIXfQPZ8nnoDk3yPaNdcyMbXEVkKUco+BB3LYf7rFOw=;
	b=lM4xpiYjpvdp0YSUeCe4pVlaWz/7e0cKISLaZrTpSAxRn8y95MbSmmo4WLwc1GeR
	bXP1pg/P4vaAFJL7R9DUiBTLDiFEA2mg/7sZVWLYO7eVQ9QAMTTJMCQjCZwHx4B9myu
	8y5KkTct+JxH7eK4ztZresmmXt6kez3JA8osZC6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646041884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HIXfQPZ8nnoDk3yPaNdcyMbXEVkKUco+BB3LYf7rFOw=;
	b=af9z60J2eSbIb6G1tyjDe75eAQcZUU6O9Rfnom9q49YIUvV+7rvLotPXilBYHXew
	Ts1ThbkQFVU98NTrwMX0MCVE+eD+Op2E7y55c6jtnTQfSQEsA7Q0XGlcSsyuHvH2fFd
	0cERvooI/1pQwuPlqQ2YysQ7DvpCP6b8LyIK2CHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fbde81d-efcc5aee-f08f-4f13-b567-9fcfd27af004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0360e5f2842102c93c6a7a9d7400f549e3ad7ea355f9c95ab28d6e096dafaaa7
Date: Mon, 28 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646041884
