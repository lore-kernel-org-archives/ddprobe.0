Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CCD4361
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645116984;
	h=To:Subject:From:Message-Id:Date;
	bh=92GTiul9YbTmhWQQSuNDcHqOP4ze8LB0N0xHvaOkjhI=;
	b=fiNP1oMyKUn8UAcakepfpf2gtwFLOqpYAWY4E408D1hJ4/Eqd72U4Jt5xFtV+b4B
	oGOJqyKZ1KZmVyWJBcbaPAeqO1G4cY+dp4scXNkQNmvWcs8hneDNGrbdFo/T2sMMRHj
	mFVgXi0JNjFgiRvbGaqVj/HSGMyXpXtn6ZXrSbwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645116984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=92GTiul9YbTmhWQQSuNDcHqOP4ze8LB0N0xHvaOkjhI=;
	b=h/ww6XvJt4DVt2KbhkSAlxdJhQ9yR6pT1OgG4qf+OkMadQ4TuQP4zlMTdBmRiKXi
	YhiWg9U1i5p+BecLAZxf3dhlYww0LoSCFpL8hI5kBruHs2tcgA0yL+FaLFkibmdl552
	MCmvmzkjQuh7tD6hxcok3Ub+E5JuH0rIqz/JShOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f089d0da1-d82e6a6c-20f4-43a1-8964-d8f41cd3857a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92651d4814982cf4e91c11848fc53ce9655029654a7c374d3c06790cfdf046a5
Date: Thu, 17 Feb 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645116984
