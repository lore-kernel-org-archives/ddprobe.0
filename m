Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADA01876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644961585;
	h=To:Subject:From:Message-Id:Date;
	bh=+O+qwhPbtATzqnnrDGVAZkF/UTglIBG2/rof7mBaIdI=;
	b=dgOyjpbizLRW7R2bBC3QDustbvSaIs1eLdrdRzyAzyfM1ZcZFh/j3UOKQ5524Rl8
	TlHzFyDUl+J782DIsVKWQxF9fUxHV3T43bFoKFPiMB2ukcrNf3KxYSintNVYbGNkopu
	rHT25kG7a6DrkZg0mO89rR0eHScAOU/NdIeu4hyc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644961585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+O+qwhPbtATzqnnrDGVAZkF/UTglIBG2/rof7mBaIdI=;
	b=Wyo3bVHxj0SwGLXqgK3qzf2wn7UqjGEB73EzNfW9rHT7IxKlvyzX7gbq24YOjcb5
	HgaxFYXinvUpee8c+1VRuTTwy5AIIT9yOi53WzfM7xLKXRgQ/ooKaV9IAfNBIq18OOM
	2csoEY4I/s5OD6fv2zzn5Deikc/IC69BzThpQDZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff59d6d1-62cfe649-9655-4f40-abec-2a97eda36a78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc88b11b363f6897de7da38549c3dfaa69ebed1728b9c708e7776472535f1333
Date: Tue, 15 Feb 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644961584
