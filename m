Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5A46187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645027585;
	h=To:Subject:From:Message-Id:Date;
	bh=AR5qpdloKakMJzUhEqvDWIqqHwo3Uq4pSnXbT6KfkRg=;
	b=VY/gGPFTxsvLqAPHpkLCK66Wl/mETUJ5UI/WLCFpdGAfWdxAbcF+4ZL2lQaXxNHH
	lUOyrsORAN8K/KYmMVTBmAZNxwphR4rAq0FkqkuFRTAIvDJbxcOzRZlmRKcNvOkp4bW
	wM571SpNU3zkhr9WFcc4BSWL44s8GrDwf3zXGUNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645027585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AR5qpdloKakMJzUhEqvDWIqqHwo3Uq4pSnXbT6KfkRg=;
	b=eK0uFlyHKrF9ET0307F2s5deuuTwBNHjoWI6vw9EdDtnBDmzxFbaa2gLdRZCwXQx
	6F/Jgym422/KMhZ8t4il9mnxtJ/K/+lZreQ656xViHzkPugcjfHg4Ga5BMKcVwfOcOh
	9XPj06hdh8qOVDcPGUBzRGKLFsubRjlm96gw9NCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0348eb50-a2d39c3b-1411-4866-b768-e76b4e63ee85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffc831f8dcf6929b033ce94733081949dfda84639a67bca3c2c3d34261a46c91
Date: Wed, 16 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645027584
