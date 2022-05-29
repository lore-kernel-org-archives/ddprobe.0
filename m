Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575AF17C2
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 10:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653819779;
	h=To:Subject:From:Message-Id:Date;
	bh=d5oo8l6UTWq9eKAu5jcI5lWHmUaS9e2qiKaY2qj5jn4=;
	b=UqshWd48Gtb4NcG4kGK8fNqr4vwl2bmkMPOv1eC6snAAe/eh768YGvjQfm0vRjCG
	WbAJRo9bOejIIedD2kx2p8PiSzI8GrZ/cnaMIwW7gYP+V5laV7Pm/+MsxVN+BRlTnDb
	dSnLQO4RN4eMrWt/Wz6Mf552FZWzAXs713aK+kQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653819779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d5oo8l6UTWq9eKAu5jcI5lWHmUaS9e2qiKaY2qj5jn4=;
	b=dnAIo/TSvHv4TVwMw4opnDQ4tpaQzv5OLB87B2UH5+VLma9b3kF+ouWZ/bAKM6WY
	Nd/JL6jzSk2NZRGnuqEO8+SsAKIVfIrshNNThUFaPQQnRDHJc1Wgkwbfx3ZWHaeMCOc
	YNLPBGJjHffAKZ3Zbpcmad+MdSlzJSXaUmkSgxUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f5728d2-4b634e26-ca05-41b0-882b-e9093ab6b983-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67215d70d54bd00cadc519f02535647f091c8b0b5e5e4473f59b5478a747fbee
Date: Sun, 29 May 2022 10:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653819779
