Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FC27E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656911812;
	h=To:Subject:From:Message-Id:Date;
	bh=KvEZOUEDT4+dHXN3yOX2SnyhptIg0OXJalG+sbr7DSE=;
	b=dCFmbAZ9SD3uXFtJnXWPCgpNJnNfDJYMS69mxXjPeF6J0ioZJoEl09ewdUb8LHtV
	/OnPfvXZC81SBXJAZISUumRjywaYWbVagSQ5IaxvDH6eVW/b9EyutY4WYQr6cptpPWm
	H/343jK4/QNlCZKA63OOJ69QLcMWp1QT5vFffCCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656911812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KvEZOUEDT4+dHXN3yOX2SnyhptIg0OXJalG+sbr7DSE=;
	b=iErPgg7IAgKpsWyS5g5JreIC/KH+7czJxDqTlJAKIuMc5skRpJ+V8XGKXFbM92W1
	0hMZdF0fL1dMYem/0ahts4a2eM+IcK38i7B6F+3BhA6BGXc3FEvtFsaTwAhnZwjNdz7
	LMiLX4KxZs8esJt+y8fHtKAng04Da7K8ruBqV5CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7a3d6f4-4024f884-1dc3-4454-88de-b7e8b23d9df2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ef2c16bf41910a482ee8fb2f6f5e709aaa80193c946220872909a2a47394b20
Date: Mon, 4 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656911812
