Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F2023A3
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 21:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652908199;
	h=To:Subject:From:Message-Id:Date;
	bh=UPVeT3cRbZgXBph1iqjCgALJOFL4er6xnrkeVciK6fM=;
	b=F7oxCAlRLowwA4mlE1Wbom1L7rsm43DzKSsA6ZCaiDYIX3l0vHupUPXLfB9CrMDv
	FDXxvwWZc6KEchMa2dBq64scp0a8UaIGhnFaHcnYpVkVOBwzqcJ5Lx6jEhzgecdvodm
	v1l2XDCYlBp7qaa4pIDpSkNj9H4Mkpdpa/JXW3I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652908199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UPVeT3cRbZgXBph1iqjCgALJOFL4er6xnrkeVciK6fM=;
	b=DjtwsUYYAZjT4LErTgMr83DuXS10UbpXDSdB0hiEn4imi6QHD0cuFEhOQsKDlUVL
	G1uJUJzgid/LRcjIeOBRbIXEi7t+41XeSrU+ndpicskMRYCpzzYreaYlwlTCKWR5Ca1
	2xZGRiDvD+R8TpYDIRwcts4e3hqnSRBDOMeyk/e0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d9018dae-bbd7cdbe-3345-42d4-97e8-85d9a0cc8609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b542f54c0440d76c534ad93cc39fc749d5b03e9d591ebe13bded755517924c19
Date: Wed, 18 May 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652908199
