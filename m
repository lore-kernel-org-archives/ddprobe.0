Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B9317C9
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657070812;
	h=To:Subject:From:Message-Id:Date;
	bh=JFVgaS9f+4oEXAe8518mgUQ5PN7ISPBwpRGddPejk7g=;
	b=jmRrOf8C2C6+hTAy2ICEsDL91gBS6Y5ed0e5QQFYh0P4xBC9wSbnwR3clbU0klKy
	BV010H1krQEDgcHtnt6sP47qQDQTyEyZ5RRZiuxC7rGwwrmgOO6g/wwHpc/pCQ5xgq6
	c9D1gpLk+0ZzaJPb+3042htnAC9xjNi2EaAwE+gM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657070812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JFVgaS9f+4oEXAe8518mgUQ5PN7ISPBwpRGddPejk7g=;
	b=VaVvtLQbGn8Q23Fo6CkIwa4lk/jEiVWzYE1KVENEOUuz5UHmXcZ65AvLOO3MXmMf
	l9eIsTTjLFGj0T4ZtSq8DG7r6w2zpTy22tHl0rAyPIIeZ8+wsWJqEB0Ovff/gRBPp3a
	agp75rYve3At42F8opzo8vaA+xsfBVAYH50lJNlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d11dfc68-2d98f198-a41e-40b7-8db2-e3921299cff5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aec992b2fb0e5ddace6d5cdb611a80305577b3e00e82aa77a3dda0ddc447a30c
Date: Wed, 6 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657070812
