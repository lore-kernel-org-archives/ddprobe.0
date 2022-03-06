Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49057E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646604385;
	h=To:Subject:From:Message-Id:Date;
	bh=Iga9Rxl4/VD7F3YE8Jl66I/Tfd23U6iJoMWWyG8h2jU=;
	b=Bcrg7aUkjWFlXjLrInGaD6U0Dp1AQsgjg8HKSFuaHtF/DvhBU3Wkf1Uj0tYzv7zH
	ZAnBgBn2vn5VJRJ3RKyLJFbrJnZ0ZDwU9JzGIJizHRcJ9k6qkT5kKItAIpt0kYx4aBM
	xo7jIdSI/mVDPiCq7igrNCH+gWtUemXQaN/GDA0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646604385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iga9Rxl4/VD7F3YE8Jl66I/Tfd23U6iJoMWWyG8h2jU=;
	b=V3092iRAmZAeG2RX98+CUCCNTzTSPG2IJ6kQIQKibncS6u3kWJQufQZawx238v/t
	sjHUuZhM4rK9Ly16wC9LX42zC1LW2oXSKsPsB0R3JKVHJzd9kEFyMA9oc6DbAy0SI1u
	js9tvHAkdI3fuMUyiBv19RTQjTFUtwckTGv24zNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6144f9f1-fb890a09-e90d-4176-a075-79f4f5c62733-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44e80935d555e990f85a0350336968a0609dcd82036e504a1dd9f2ac9573f8b3
Date: Sun, 6 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646604384
