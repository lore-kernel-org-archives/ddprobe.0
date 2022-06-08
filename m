Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE3217D4
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 06:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654668059;
	h=To:Subject:From:Message-Id:Date;
	bh=2BTXg9I4dkTvt46JsBbCVQ++pvIBp2QjvwmVUPdTs/M=;
	b=T0dmBZ4mdnAM17beg9VC2FdMbE96/5oWyqgcWaqvW29/8M60Ujs84vRyYaYt7Woa
	UB18Ud8jTAQxlGFYygdY/DE7M56AK/iNBPTTufoErrugP1TL+QuRLC1rl/x2GNZomgc
	13ddku9YrhKZxPJK1TVweZd1rL17WqLhYtffgL4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654668059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2BTXg9I4dkTvt46JsBbCVQ++pvIBp2QjvwmVUPdTs/M=;
	b=I+F8pGoB6PZ3YNXntPTgHMUV5MaU5zXRpIaWpguPxTx8v7HPZ6rw9qpVb5wDz9E4
	LyQhTdp0bPmDQRbzGvEM4O5wQjxNHu7kZEEFDTp1isYbyCfmu81u/M8mTXb73ST5Zl+
	Mwjuat4U7mfBgVzm1sMf9f/0GMRZruB6/ZyRHk6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141e6e26c-65c47d1c-ac97-4dfe-95ac-c20e9d48ed2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: adaf01bf9c59e4bb5f481545f62a7c278c2d8d51e8b5d0e14971cea4586016a7
Date: Wed, 8 Jun 2022 06:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654668059
