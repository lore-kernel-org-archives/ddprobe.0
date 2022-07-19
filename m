Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F32CEA9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 00:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658192212;
	h=To:Subject:From:Message-Id:Date;
	bh=UvU2JdqEDESdrtpPwFLVy3VWvYffemT6n2C6BCVYEXE=;
	b=A7c7K+ghu6g/tFixwAVwvxZOpa1pfSuNL94cpFojX+FUHtC3BZoM3rVrwamEnLzn
	/rm2RcX25Xf+49dahtHm2a4pXcG30U9M2w8gPsUoA3v7r1wCDQOMqnHZrYQfni3rGFU
	g8HAJ/5yDX8E4LMLyUbVfk+g4AKHlUeK5YFLs97Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658192212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UvU2JdqEDESdrtpPwFLVy3VWvYffemT6n2C6BCVYEXE=;
	b=CTV/IN9MPSDDLoW0EBAMdQgVg5bKjw8XFn9407sCqd9anLgBnjW4sABnxka3qe0y
	9DDSDAAeKOfKBb3x/3zs4lXney/AGdPhqz7qWPbrGMAJcyRXZkHoYfJtI3KK2g+Fb5A
	FxfzZjZx/u+bP9rjAOeHIUX2SUf5VUkn1t6husA4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213f5310e-6d04c381-1afa-43b1-9890-cc60a4d2f15b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20961def426743ef1f1527fd21ee3f5b27892c661a9f7c1e95444b73e7ab0579
Date: Tue, 19 Jul 2022 00:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658192212
