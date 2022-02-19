Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD3C53BE
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645286785;
	h=To:Subject:From:Message-Id:Date;
	bh=nCYZSRddVpk8nLNQa0vHUiy+m4anfRIhjXDdu/d1EdY=;
	b=bUMb4H6Mffd3n+cbebt2jjg5mCN9y2tnwj7VRRFxF+b7Pt7tCT7suTOCzZAMCyDj
	Bu+imQ4vYmivcSc1J2joB94ErIgAGpb5HVmqcmuxjDJJCE02dDesTOJhmlOAew335+s
	ZOpG+iIp89UJl6AZQNZHNVK8TtLOSkj7F9rPKhOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645286785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nCYZSRddVpk8nLNQa0vHUiy+m4anfRIhjXDdu/d1EdY=;
	b=Fo0HcNhl7sfNfDitOedc1C6Y3JPBDdDFuxMja/BWbW0CmD84MKxgE/C80j54QRXw
	i4it/5knbA9ops2bnibm8e3VpQpBAnn8X4PU5vAzW7vAQRk9syzsEO97aNBzm/l7jXg
	8W0BetL+kbZE/ZXCMxzHxoPC3U9yQe+JDWVuDmGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f12bbffbf-b8f8f248-e16a-4b4b-93f7-1f890a82fd5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 024e348310e5dd3a86196a5c586ad6f8ca1f414ec2d5212314a3c0d36a3fec74
Date: Sat, 19 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645286784
