Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA207E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646955685;
	h=To:Subject:From:Message-Id:Date;
	bh=uTvaYtzBTthtkUcvqxh6q8kZgUMnLPkJsNZWxQX0KEw=;
	b=IPIav1MLhlxpamt/Z2Nq1kJBxXJtSG+vhuGWae2UZIVupeRKR1Q50p+2MaU9gU+b
	i75fhOwzaj+PFYEuDdtr9ulVjdpuaEN34DLpm/ggmG7e2g+gKvjfVRqb+8rkijuK+b8
	K3UFCp5cQ6/kSBv9IK39xlO8ts8C2mu+3W6zXPrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646955685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uTvaYtzBTthtkUcvqxh6q8kZgUMnLPkJsNZWxQX0KEw=;
	b=hmgYpkgqTZuvYpypJlJEYhokR4vgCqaPF8OlASZO/Ov6uD1Xh+K2her4tmCuUPtF
	/J10ASHRHYlqMK1uC6yeT7vJ/iG5KlDOmF6VYMOwkRbhwx/rULvmqsKwCN4iOlx1DLB
	WoC/RLe80kCI6eqJHg61vrD1xkDG/almXT8uFf9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76356413-0446b110-aea5-4d80-b75d-b1428902de04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bde58fd284e78d39481f131acc1d2b591e300690c2dbe013c9c02de7adb1b117
Date: Thu, 10 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646955684
