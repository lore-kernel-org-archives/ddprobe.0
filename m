Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346D37F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659478852;
	h=To:Subject:From:Message-Id:Date;
	bh=FDwBqhMNUimdZz1AsVYT67hfA0A0R9DSXRYXZOSh780=;
	b=kKcshjN3TWjIDazuztnXGHAmCoxlXC3hFFBdaZxwfEgqlod1KWIEYScAeiccLbU5
	TWV5SmT6EyapazoNKcKCI/OtC8V7Rtiym0shIB6ICEl93qEBhsE/kJDHmDZdvGahKXK
	RxZ0JOWaE1Xi3IlZFqyhZGoaDojsm7aLpFKtaj48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659478852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FDwBqhMNUimdZz1AsVYT67hfA0A0R9DSXRYXZOSh780=;
	b=OhJmfIbhK9q7Pwu53voYHkHIR3aA9hmmlu/W5pTv7pgc7ZgkbF2wvJyWQDs7oVE2
	wMr70nUyBG4IJGk+oGmRNVlCvfq/IHxGlz6K1gadb3mfurF53xaRHS/rjLAojK1lQsb
	U4pzg7iAGRQEdevpkLd56LIBU5vr3pIRajiSUnao=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260a5c41b-799848a9-8040-4769-9e27-e0c6fc1795bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e05c82d6f31f4db0aa7bf093fb21f9223f7822b70d5e1c073dc6b98531c9c635
Date: Tue, 2 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659478852
