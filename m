Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D627A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646403984;
	h=To:Subject:From:Message-Id:Date;
	bh=14M2fka89fOjzDw2wLQGshkXLXceiv04bauMMLuBBZ0=;
	b=VzcI+XTt0LxI7V/bkaz3SIx+sgvyD5x5Ip4ix3ZxJM4JfhBO7h1OkwtE2JwPEt3P
	f3nbfeOLCrvlTYJO9bve7xCx4yIh9ZaGpaIBbYeKhvrC6rNZya+O84jUWceJXeDnTAi
	UwPMZIN4c/willuOvXbxVi2Foj6SF7O68LaNq4gY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646403984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=14M2fka89fOjzDw2wLQGshkXLXceiv04bauMMLuBBZ0=;
	b=JFHGppIB9fTCK5LOdqN8O4qAFYLI6fdJdP4t08WirGgglWn8Jexg1M+SMYyxvFa2
	umO4O0/W9CjDM27Uog4RZL5wC5JYAAiS1nDzoDfnfaNbiW2UmEhUIy+HF4xgg+tmqbn
	CPYyYbJjH8qEqBBK5B+kBdKEFJzg93fMSUPjKhVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f55531d83-c99d0719-9ac5-4180-8dfc-0a0f26497e3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 858afb6448f790c28b42e203518c7da260d7fcd3ebfbc6029f38c740b97170ed
Date: Fri, 4 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646403984
