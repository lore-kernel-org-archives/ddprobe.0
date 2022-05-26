Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65ED11389
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 14:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653573959;
	h=To:Subject:From:Message-Id:Date;
	bh=vaHixHKRy757EFuE7B9Ts1dfelB3GB/W91ySXi6UfME=;
	b=iqRVA2kh97B4cOsLBiXhjV4/WSzr+n0zq4SDYdM/S2CudC3zz1A8XkXmUKq3Es1n
	FM/TfnkqewFFjdhGyz/EcRbW7HfEiFXLLR+7X1z7tRODWEwwL+8E8eVkPSyqhPK/gUr
	o+vyVgIv/EnsfsVMxMAS1BmNHJ58fq4tBVFWI++k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653573959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vaHixHKRy757EFuE7B9Ts1dfelB3GB/W91ySXi6UfME=;
	b=gryKFGQ7bCh+86Ie8YWxsawlOgfi693/6RDNptVq73sNeFKHEwfOJthHOSvMeCBo
	PePv4eehG230JuIkqYCWUFRTjp7hPfhG0akYhTen+j07DxPWfNQHkKEFLbQWEsxe/+p
	ow3/4AGhHTiriTkark/r2TfutbfIT68E9gZ2DSuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018100b03e79-7167069f-28f5-4cdc-9df5-1f944d4bf3a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42a4327b5fbbf1e85a5a95e554831ffabb6bfe910911474b60c7b66b55fa9475
Date: Thu, 26 May 2022 14:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653573959
