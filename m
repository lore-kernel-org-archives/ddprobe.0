Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C647A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645781785;
	h=To:Subject:From:Message-Id:Date;
	bh=wuqTH/9s7EYAxlDOTE3JzorfhbsVtqqtbi7iyBipmYo=;
	b=DFUwTN7eghE9ddiVmvbG7D3ILsHD3X7h3R51npept5J+IRu0RIUWO3LK/5eGln+S
	9vioOMzV2vt99Kfgf42eCuZf9sTUVf4c0SfPHQy6yACVdc6d/YfV9jmZ4jOHp57IwnD
	vhf+jLsSZ4erRmzJvp92KWIyVHjK79Fp4M4WckLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645781785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wuqTH/9s7EYAxlDOTE3JzorfhbsVtqqtbi7iyBipmYo=;
	b=Nv1iwla/3iWVUzvLzVR1JOL+XeyEFG7vQYSYEo+D9qzJBXHWqCyZptB1Nk5Lb9Si
	WzOJtDYjdQ8YZA6y2iCpFHjhmDS/D8c+L1y1becq0BP5rMaTGvi8PuUtiyGy+pQqQm5
	LDQplsMemgqSrdNA51tQdxjSoORSmS9vHzu5idvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f303d18d8-8fa6d35b-00c0-4d0c-9ba1-6d4eb03b58eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e222f4df57c994f8b0f2262dffe123f84460095609b8a29b7723f45ca5c16a23
Date: Fri, 25 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645781784
