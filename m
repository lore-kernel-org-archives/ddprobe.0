Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 666FA5EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645377384;
	h=To:Subject:From:Message-Id:Date;
	bh=Vn1xZkFdxYyYgaotCdIhk+uO5fwfTznKu1FKzp28q0Q=;
	b=k2QenZRm8LMT59Rhk0dh61q6D8F34C+7VTo4tnWBZbzdOdFG9CmW98JfkZZZSuHu
	hyM74honNgPTSth0b82Ake2GeyC2ncBx9Pk0/pkk8fopTEoU9vWK8sP7VFEzaw7E4JA
	hbqgGAYblKLlis9HobagHvFW5FLNbBHw5p4CnkIs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645377384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vn1xZkFdxYyYgaotCdIhk+uO5fwfTznKu1FKzp28q0Q=;
	b=mBcq1bpfA0d0wnCgiG0Y43U1jiwAV0oqxP7yX5VHb2Q4FxxrWseplYiev5Ik35Yg
	IczCu/5T3hD0gOdpkHSHsL4Q3MhAe8fnIg+CLeBJgpUxvXHE8VaGNaoFKpCQAIUC9uY
	ZmNME/ma7HinvF0sdH590yuFkf8H75HkylG5YwLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18227127-3b0f2922-aabf-42de-a0df-816ecdf6d9f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b44851725677dec61e956e1b3acc8b94d03dd148067fe2ef444c283ff4c8eb3c
Date: Sun, 20 Feb 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645377384
