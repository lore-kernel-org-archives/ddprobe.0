Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B0B7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659933652;
	h=To:Subject:From:Message-Id:Date;
	bh=eqMqxJZEu9vyR9soYT0UCPvoxLGOKd8Xfc0CtA71VjM=;
	b=Y47X2uO4qFLUWjtYg2s2hLouS2oBgetcNBimV3IMaoy/Qtyw+enaaV5DsKWE92LU
	8L6nrGmmBnhEwK6J9KN/CjO35Fel9aurtrV+7GwdjQrH5LQ7bw8saIEMYw9wbWdOm14
	CxIQqBkrRwaivHc8R4jSAN2tXv39qUZWoc7rud5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659933652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eqMqxJZEu9vyR9soYT0UCPvoxLGOKd8Xfc0CtA71VjM=;
	b=gHht85lqM3ppTlwLlb72Tohxwm9J9UxtKBll6TLtvM9TM8JOaWmh4zyVo38f1vYd
	dKIVc7XGG09eMMdZOBG3RtKhABOyG+owZHxaiwdJYc/H+B1i9+KQLyW5o+/T/I849ar
	30siZsz8RXa0E7mLAVplznl659AxKCfJKFHoIL0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827bc17665-e9bf08bf-4867-43e6-b725-b246c1aeca91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 859d896bf762f24555701eda33956e9002fe96fb0480db51252eba52500dbfcb
Date: Mon, 8 Aug 2022 04:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659933652
