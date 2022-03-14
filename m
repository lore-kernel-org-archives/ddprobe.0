Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5B87E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647241585;
	h=To:Subject:From:Message-Id:Date;
	bh=UZMytY4pMb5J9blcX0DFID+ZznII6wF08MAXebKglmE=;
	b=mwRWQSLBf3ee8qKDwsFT+YZV/9jeAIMyFcK2mBLlKdW7o96f19Y3Q4Oz8CHPBtL3
	9wYryATpWZVLL+mR9HZiz0pA7A/+PrUrcEp1dKEz5OQeYpocNa4UfYFRqozVYgI2eo5
	9zVr5a1q5RrWJOPNSt2dm2R65FF8DF8ZS5TLQ5iA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647241585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UZMytY4pMb5J9blcX0DFID+ZznII6wF08MAXebKglmE=;
	b=EcyP/4KX/6v8Rilz+YZjMtzukoC5FlaFAeCjK2xC4F9MkhcNMBxOfzZrbrM035Y3
	jDkHyKzVP4kw7R56eTeDSKOTkX6JW17fdqWBwjQFku2c01OMWA4xjMTvthpjsocRKYg
	Uh4PTrxIo7uL+x+nq1geGfs2OP7ggA9ixdCAf+G4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f873fe0cd-268eb311-6402-480f-bf94-d2741f179444-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02140114a335d6638d93396a5b8f8027fcc5998790012fe012c8d291d5bd247a
Date: Mon, 14 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647241584
