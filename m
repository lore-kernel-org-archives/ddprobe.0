Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC56C7E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 13:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654522980;
	h=To:Subject:From:Message-Id:Date;
	bh=lx3D6s1f/wF4lY+6eM+NTwRaVBVVzJA4ANiMFS3AD5w=;
	b=P4vsYUUJ62KZEYMz6X3YMezzWdkSNQ8wxWMxPuozkzipO+OtdJdHqgSvHtPzQNNC
	V01ptXWT1WbY1se7MXTnvNJXZrn8xtq5Va7dUNKMR/SyvYuOer0A+7Wb6TLJ4dlgVRb
	GcOplX4DuxscrQcNAcaPaE9ihHWgD/hJk4o4bafA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654522980;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lx3D6s1f/wF4lY+6eM+NTwRaVBVVzJA4ANiMFS3AD5w=;
	b=Q1DCvgkkSmd4Or+ERv1D2CJeQSq+vu+L3Fudk4VPJyqes7YHW85IxLLDfirquBzB
	8xvLGu0xUce44rOVqBo6j9u9BaIHPMhoQiimj1vZTWArJql1F5XY6LXdsk7pp5mXW88
	Bi/kWl9Bi+GP0GsUuHBAg52GjP52pINn3uvnFWw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813941241d-08162b3c-8794-407d-a0e1-2c2cbb76a39a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac41dce59be1c3706c1da1f1bfad57c4034bdae00e576e547500243abef57928
Date: Mon, 6 Jun 2022 13:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654522979
