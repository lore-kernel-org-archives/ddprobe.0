Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8670F4C63
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646013685;
	h=To:Subject:From:Message-Id:Date;
	bh=KxQdtRYOslZ9KIPkrsAe2QMtT9S2Kci2ylRJ1b7mEDc=;
	b=Zr4QS8qDPjlhUItiA7ASo+quDwz3qvVIuxbCodGlPfvG7po9gV+8kRlG7lUr4vo3
	IqYsGhZg9m2FP7bgBGNPXVMZoDepG6pzSgJG8yOGoMnBmhQwdAKPQ3UpwR06w3mBFSF
	0hrnlvfwZkOKuD1TQjuM0swzZViilIiKgIGGPF3E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646013685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KxQdtRYOslZ9KIPkrsAe2QMtT9S2Kci2ylRJ1b7mEDc=;
	b=khb4Pou2GZ6pajzwYAge9GePSMmSNIF+IiqZPsFLJGsw8MFmJ6GRt1Gm/XATcvW8
	xYdnFdj4PF4NXJJzPoXVwkQqFTWk2J8UOXMZ/XclqaPkdvgGO3AUAX8JGmK07WtyRTd
	qF9xGRqazpcdyq7PfdoD/rVGPPFKM72XWGs1OEAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e0f9c35-4e3a6e0d-4ecd-43d4-8d8b-983f0d4bfbe0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f52aef1a25e8c576e09624932dce4ef20d7f4bae2f98d153f14f58038914eb27
Date: Mon, 28 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646013684
