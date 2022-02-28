Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76048320F
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646033184;
	h=To:Subject:From:Message-Id:Date;
	bh=/fo/s9/nwjyNmOjuSdtD3zd/gGbubOU3kqqLkcyt5PQ=;
	b=ke7+DihOf1RX5K4++SANmAY7hvky8s9XZLpbmJFWcpvwbJIc5qYEmfrNlxfBlVDH
	lr+yVs0AVwks62ssF3zHEuaB700sZd2fnN1nrWjLNR+qMWJrSV+f1mrTa+lU58P8Yz8
	kgvchcO92rouJX1PoERborRt7DhB1tHtD6L/TEzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646033184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/fo/s9/nwjyNmOjuSdtD3zd/gGbubOU3kqqLkcyt5PQ=;
	b=F5qCvwOzED53ELFWRcUQq7ouhPYflXab+FjZyWV2s9gLskq94aqIhuZIZndrJhCp
	oQ3tEVFnVzxy5mMKBEj70qkeor/r+dS8yUZpebxrFOVyr8bddVjI/4on1hZ1fWXj2WN
	mIFTy3ILxLPMddp2tkGetiXKNn8W0Nyv2LYKGsqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f392834-b0b675cf-348a-41b6-8268-5284b0e8b49b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ca7e1c92c4381914f80b5ce58e3dac365e0a8859092c64046e4201cf6f1c139
Date: Mon, 28 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646033184
