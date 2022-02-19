Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682924F21
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 00:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645230384;
	h=To:Subject:From:Message-Id:Date;
	bh=RpaE3MlzBEZ4zU7j1XoDVEhlOpOyurTZM3ybv3QTULM=;
	b=K4u2L9ctp8unawrBTwefqdZr7ursKFks0BFFZg/isZzI0DTeKw9x/DYojTEzp170
	FdPqP3FCgGePFu9ZObXhI9wG2DtLt1P9Bw0Syhx0+dHe6/QCThwcwTfBdfq4GhnQ6rr
	fhPS9T2oDEyyrfUrv0gkXw1Yp0EzBdPJCBUF2+to=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645230384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpaE3MlzBEZ4zU7j1XoDVEhlOpOyurTZM3ybv3QTULM=;
	b=cbX/SDChgXWNIfxyh7iAKyTN+vt1TDWv4uHUeEwYhj0XuugRby31eI6zGHbsY1Wb
	r/lg28z5Ai1NFkZTYKLRQX8IZIuVbvQjCIgB7oppqch3ctc6lnvkRbskB32l0pUPPQN
	hOx5PUsoE7obi34tm7FMhYOozyKISnY+xGixZGIo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f5f669c-b23ffa7b-763c-4969-88c0-18a1010c7cfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa98c24d7e20854b72b20587a61808f817677aa644aa609fc19f4a6dd46897e6
Date: Sat, 19 Feb 2022 00:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645230384
