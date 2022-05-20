Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256F47E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653063419;
	h=To:Subject:From:Message-Id:Date;
	bh=PfX5chpdB8ry6McNDoiRLiLZluLrv2rjG62G1h+ozoI=;
	b=HWibavJ5DOdN/mCZkg43gOBEqSCMg/O93gnNMM71psz+7onjxmuGXWjPGA6YXCsd
	jdU7ilhkXy88cP0he6y/ANQEXxjouj5RYCglL3PAdqqRpwuRZIo47MyW3zEUPGMPHtY
	du9BfqnqGqmE+YIyyhMdUPcRw4AOCpkajw1ZSTU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653063419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PfX5chpdB8ry6McNDoiRLiLZluLrv2rjG62G1h+ozoI=;
	b=GDYSKQ2CCKfw5JnddSEkkFeodq3v/vkTTZcNbczA5i7v2d2uIQoHwAoeSUOGyHD6
	ovZJS16j+R4XipPn3vB9/bOoqtWwet2qw9HDkMC6b1DoIq5x8Rb2yh9uEZkI34q8ed5
	N0lGCJpRROSBAmBp1+Zk51y6mMAORyQzMgAu3ArQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e24205ca-5bace4d3-7b5b-4c44-b0b7-60792a51a60e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1db9f8c775fff36298b2d87c39efa5757dc35a03fd14df4de4a00574c9c4f27f
Date: Fri, 20 May 2022 16:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653063419
