Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786801398
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660563052;
	h=To:Subject:From:Message-Id:Date;
	bh=IfqnFCwM08GX1PcdSZBWDCv0GdKVLPDnGUZN6aC6xX4=;
	b=LhcEpIB8Z1QPOGE3HnNJ/o7uHPiNfFd3v4Hr9Zn2S/vnLUG90u5iiKik+uBfQqzk
	/2QedChiGfe/bv40RbEaiE9JWwT8DCpl0SbnJwJlkvaO/GsMI2domePAs6UGyQ7Qih8
	N4Bjln+P5RkjI+6qQcZ0wGD5ydYNuYCddkJIc5Hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660563052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IfqnFCwM08GX1PcdSZBWDCv0GdKVLPDnGUZN6aC6xX4=;
	b=VtwdKrTDFJNsqyIJWfVJmDpOvK6dB/X6b3z+W5mJntz/zFT64zBCsydJemXD7YMl
	1GG1Ep/1BcX1orajcmJJMsa0zVxztGWu489UlQlN1Nw8FS8Tll+PZMSZluYcH5raii0
	L6C43ygn2Q0D75FFtFLxdwDcVRs4BBYLc6FpockA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1455833-eba31654-4246-4f80-8479-54cd9702b500-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30ecb32e124f21f88e28214986640826013eae887c3a6c445b8d29b6e95aaa46
Date: Mon, 15 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660563052
