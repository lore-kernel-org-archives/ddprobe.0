Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB89C19B
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 09:00:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644656439;
	h=To:Subject:From:Message-Id:Date;
	bh=ae8XUt9rZMlhn0+PZswOa2XTZEH+sKO8A8EeYEU6P14=;
	b=PWLExdMNlPsVbA18Yvswrzy3UNYKSzUQWv7OJ+BWqO6dRp5R27zN6Wbe33QqR78n
	u1Iuym0WWwPJYKM+46dv1rLBGTcpkC4WNWdS9nnEKD6emseJCTqwcO3B4YjBPhip8Vx
	2QNlZVGh7RGazWjTvQrZYTCP0cNuYduY5dUhDjSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644656439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ae8XUt9rZMlhn0+PZswOa2XTZEH+sKO8A8EeYEU6P14=;
	b=bACsaNTjsKjSnB7aawu5OSW+nEvkvlaGYyeNuoO9bVmCzwUVa8xlF1x5WReX8IFx
	yeuKzzCBuz9n0d/xWBS4/Tayi2UJOI1yVoZjqiGsfiFxT6w3RaEFUjCnYA9MPzV7ze0
	uTItNgS8W+BTlhfDGV73IFHJKr8vPc6jROREs9N0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eed29ae5c-095b66ed-69d3-417f-b5a9-196f01d44e70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52694b52106fe9d5825db716ccbc9db4a99194ecb95be8bbddb2541e0841046e
Date: Sat, 12 Feb 2022 09:00:39 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644656438
