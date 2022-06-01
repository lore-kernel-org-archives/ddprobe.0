Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082B220E4
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 13:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654091159;
	h=To:Subject:From:Message-Id:Date;
	bh=+SITH6LlF1rh52i6Sr1OiJ4je3uThqXxkJKosy4QciM=;
	b=IZcJ0niphFOTRn9+7YgYUrLtGVw9WHP6UQmx9GiiXwJRFd5prpJpCFAhfDD2iSFM
	RYTzyvgbhMsW7Y4pBzFazSAiQw9XszgWtZ8osjKemN5EGXCddlcylAeLsPLxU35/Y4y
	FRc5tpHYXyU/cfdeMmgYoXAhDhorhXGOf+xLKyu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654091159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+SITH6LlF1rh52i6Sr1OiJ4je3uThqXxkJKosy4QciM=;
	b=KdWOZWIS7nBvLguyLK7uRhjjzH0Xh6A3y4BSLmMvEowU8BPVzH3RpQrgVLsfURz0
	BR866EDJ8qSuaFxTbdTAexPcVibHUPw/0bPOXLgckxgkY5igek+3pDKGjzt7hRpaFuw
	XvzudYkVZmNEHK/lmDL7C3uUUTNDHdPRYQyQfJ6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f8416e8-86476128-a66a-44ad-a19e-f11256c61d0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80f8cf551a70ef60914ebf12a1e41ce14746f4fcdbaf2dbb1b2ccead7ea378d2
Date: Wed, 1 Jun 2022 13:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654091159
