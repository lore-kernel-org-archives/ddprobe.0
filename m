Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773C97B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 17:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645724184;
	h=To:Subject:From:Message-Id:Date;
	bh=UlGOglpR57vGalj1XwiojHXZhbaYWCDR/rnC3y1+WuA=;
	b=jVaedwWlqpP5RXxKZRWacflGhAYIJSMMZGWX88aEXaNBb4wR3TP+TqJRShwyaiJP
	VFcnBFKFMB5FhFAlRDqdgX24ilN1tsLQAfAl4GYr1obaAq4BDxIs+Yy3CYHd/5K2ou/
	Ur07tFahruzzvb6rtnLJMNX8uw5Od00doGF9oxxo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645724184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UlGOglpR57vGalj1XwiojHXZhbaYWCDR/rnC3y1+WuA=;
	b=JlVfXr16imgmw8pQyx4HsaaGpFDHZ8DpsY/Vz+0tvXGL/VaUHOJ+6n3aOEl0V8i3
	zdrCd/VBt5pWDsu3/CVrAu2WOVLPpkbcu34xzPXX3Sq+Vou4Yos+yRHWTQadakm9cfH
	PbTi54ITo9U9P66zizmoPGmRP9s8eON4wCmd6PYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2cce30ae-baae1818-c143-4110-98a7-3c00eb5b11db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb0bd75ae21fbf6f89da53ae7c1549dcdebeaa9964ee710f8bce81b5968ff2ae
Date: Thu, 24 Feb 2022 17:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645724184
