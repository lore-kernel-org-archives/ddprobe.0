Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA827B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 02:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654656179;
	h=To:Subject:From:Message-Id:Date;
	bh=0s0S5x+5XAVhNfocmDHQD63TuQHREKLelljEsiH8lvM=;
	b=T6K+jkAu0yqcNNYSZgmOqgccyKEorvAyxOnLOVqpgkZk9CCCLr0xDIQ1Xbl3scM+
	r4Cbi+SCkMdZYEwIR7El3dKf5/50MdfEh7zfGRbQ8RUNZUO51nQX4uaiAm7hOkk3V33
	yWuVJ8f1/HOMX0MaCWshBBUTy4VHg1889GTR/0pQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654656179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0s0S5x+5XAVhNfocmDHQD63TuQHREKLelljEsiH8lvM=;
	b=R2qJhWrjXZYjs7zDAHpCAYG1YwfZWxbdK2S6N/D6gZVhAq27ZpzFYjbiTrw+dB0R
	ctD2CkwjSFUfxuaPRjezsqSdAgMIDkhwYQTRsBoshR2rJHyN5Ia6fUtKrWdyTkyit3w
	iwSDlJpL0mz56+8w7yf2fIIb3nv8PxXSLTtwzrL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141319c4a-a1f18801-64c1-48b1-a572-650aea983237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48922460a48ec87e0a3338324c675d2d0d9ca50731f50f5816f6fb75ba97b4ad
Date: Wed, 8 Jun 2022 02:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654656179
