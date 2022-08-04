Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957642570
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659621652;
	h=To:Subject:From:Message-Id:Date;
	bh=RPbsLH/3eUlR+AAiRJXG78JkUBlu/W1KqcoTgDPEzPk=;
	b=dJpce8kHhNeFPO79XeJPlGV4NguqezA3xln6Zjgg1RiMnpnvqo8WPMEceNK+MbNk
	HLQEGxohmoYW8vKHcxF5BCcWunWAcZLoIeT5BpKFArYyH7IsTvAVaMIWXfYrjtGyvlU
	8x1ausGBGCwnNp3ys1DQwGvZNYjfEtD3pZNRcNAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659621652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RPbsLH/3eUlR+AAiRJXG78JkUBlu/W1KqcoTgDPEzPk=;
	b=dBYHHh608WYULm0y64rbAioQmcIEkwtYg5nEzDXvGUuQXL/OO3wquVqrvTkxppm9
	2pAQBd9wRz4LxHYDzPxTabYU001lfLDyem/kG1o8BJGZGZM5UtMtcvzHH/H/OXhjX38
	uZpiRpJbP108fLFQvWYGXGQA6psIheaKNT8eDSm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826928b88d-72cc427a-fd42-4fee-a87e-699467aa0535-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cde021f6d84a301bde921d2bcc8295e524e79809c46021a5a826f3d8a34e397
Date: Thu, 4 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659621652
