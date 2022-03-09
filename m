Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5374C7C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646829384;
	h=To:Subject:From:Message-Id:Date;
	bh=NWE5UKNTrRJmt8XMjrDI0APzsv3dyLADxJo2F/jEyhQ=;
	b=HjJzDZVXPJGNo8rSBgiSOSq1bZW+o6rK6SC4MGfka8xWfdV2UtKSke8JAh0y6eeX
	Yn4e59RIpMi9Rl9aynN6ZbvVgXzDIy6vA/GGwqhz3p5b7XG6vMyNsif+SDUXIm0Xd/D
	KbZKbIkzd857evOIo6irWRWJdWL90jrx9rdHJi7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646829384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWE5UKNTrRJmt8XMjrDI0APzsv3dyLADxJo2F/jEyhQ=;
	b=lhKt4yZpGeQFgDxWEtuSdI83SqHTVNeJBdxDMe3cAQ7qVUk0qoC4yvMz96wQaAZh
	iSfxZL+/+gz+4b5iTdm4H0RdLCWMiZZ6/8wJ2Vyy1EYJ+Zf2ZLfl4HZ63DQWt4WZTAC
	7c0trdDlJ1BDHKj/ePSVggPyatK7YuTOQUxuIyDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6eae342e-86ae1286-54a5-47ef-a4d8-25524655ef7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32a6c4798612d644a5bdd0395713e063942f5a0fa0ce6c93b5a8830a67466082
Date: Wed, 9 Mar 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646829384
