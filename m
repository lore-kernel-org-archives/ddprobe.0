Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F6677473
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645710385;
	h=To:Subject:From:Message-Id:Date;
	bh=QWOxtcsGUGQDNKe3Jubs7vuY2l/zh/mcd/8SG2cGlpA=;
	b=lnKDB7cn1Ll9yjLVLpiI3QOM0/O8C+n7z67LpqLpWwWaHYvG0BA2r6q9Yf23hpS4
	NfFHKako53pxN9/40YWEFpbVeESyUzbWGF0uUbv3o0Q/NrLvBpRfFgaxSPzo02T1+5X
	rU9EL/n4qzQ8YhzIuQrAR6fhqKwSwtmZILloQvhI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645710385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QWOxtcsGUGQDNKe3Jubs7vuY2l/zh/mcd/8SG2cGlpA=;
	b=ii5Q431tKDF20vPFGOj2aiFLPddtA9EdwQYZYvPp41ITfomQz9Zeoy+25Gl5JfuR
	giKGG2nZMHlNqRtAL5Jyaki67s7Xvusldbl8L1eCLVc0OtgQTx4i9gI/E1vBrO/7lUy
	y/JsGX92G5S8v/UcjBbzrHjY7DHeiB8ykpcoY3Vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2bfb9e73-4aa0049f-a6aa-48ab-8f70-42b1a0f2a163-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3ca9eeea9c24b839297e2f524522dea325b8ebf1146b882104c234228e194a2
Date: Thu, 24 Feb 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645710384
