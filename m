Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42822104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 03:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646190984;
	h=To:Subject:From:Message-Id:Date;
	bh=fu9T7jZ+K5zXepWrlYAqfM9RP+sPlLxIxEXC3odeRIk=;
	b=Vpf6BFbFqCxzJFi0waWs3o3rnWh6uWEgFJ30yopb9RIwhQ3vAO4DC+u7r46ers6h
	p2Ix6czYcTsvenAdV/nPBWUM5UP7zhUYhi05TrhSi/hVsGUDKtY+Nd7WTUy2+U9lcr0
	1ujaoJEmUBJM+XYnH4H9uW/u89USOVYGWlp+yBH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646190984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fu9T7jZ+K5zXepWrlYAqfM9RP+sPlLxIxEXC3odeRIk=;
	b=fFHI0BpXqD6NvKP0tgyRClIt5KfjbFncXOKYpyo12KWUYksNmSwukCXX2KcH07Dw
	T4oujYk/CBw3aRUIxOdOWB7h/v/vzYd17XLO12Lqd6Swyca+5KUELQ2bgWk5xSt7tSS
	48oOxRJof256JcEFjIq1hkGtUvDurttKWznfYZEs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f48a0fe15-a7403483-c549-4014-b363-81cada297168-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88d4cde51f65e92a4634f401b9319ddb6df82cbf35cbd869469786a516633b45
Date: Wed, 2 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646190984
