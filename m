Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411FC3694
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645044984;
	h=To:Subject:From:Message-Id:Date;
	bh=s9kaMv6ZpBA3mwPP2l+2fu7AitlZKzToLDESbH2TyzA=;
	b=GOto/jCqqcQPSNM/5FKa7gTuHrE2ZIG/jBTvfB0pSARsVIMa5oGbv+jBzJrTU+W6
	0RhOEFTfMKKTeV6/P0bnAgkn5W/320e6JIDYzQEvMsQPcrwb8gAY3E0VPfOG8z57Wov
	ZTJqy3CZVpSHs/EA83pKi+tqAzQ2vZOCNd7eDxj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645044984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s9kaMv6ZpBA3mwPP2l+2fu7AitlZKzToLDESbH2TyzA=;
	b=BHIyC2LfnNTr3tjBQTEkb5QiDAWmF4E7JtWE3LGfm+GFBpYZVLsIa/aiz5/ESr17
	FnJThGEdysPyZTFhekItL3x/Q2HNBbTxALh25ws08uo2jSL+8t/uw6ScN/yjdDSdYYX
	PoQ6ntCvi7m3gLCG4bPUI+HK3XyaDs4+gs540NTs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f04526b91-baa69791-cdb8-42fe-a246-d0f6aba40ea6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f7686bf7a9c40f4b07c27eaa484e751b1122cc8db86ffb72056debe68fbfa8a
Date: Wed, 16 Feb 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645044984
