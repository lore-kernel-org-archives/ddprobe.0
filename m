Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0364A84
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647546085;
	h=To:Subject:From:Message-Id:Date;
	bh=nfX2MlUCTOORBNRMd1KVFSreqHIcdAUOrPFw+vLo5z8=;
	b=i9WicqIJ6AZwqsbVs2tdNA46OoX3zP4PwHaT1ytrKzCk/T0pDA7TXX0RyGDDoTVs
	MdUwTROBnDaQBSSVHPY35wGHmcbb/0f1bc4qC5eAd5jgjMOvQ0gX95iagkH3OSAoBFZ
	75JxxoqxE0PWmnUJXKZpjq/Z+99wdnE8TWk7UdkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647546085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nfX2MlUCTOORBNRMd1KVFSreqHIcdAUOrPFw+vLo5z8=;
	b=Src6eOvDpt70d9nM39RnZ4z6ya77XFyKLmXuc0edu4nyuukYg48YULUvVq9ud+vy
	Ei6GN/rAswQ/6qhugoxLaur4MxoBdLs2SHGogJHTeOIWJtl8fpBNGCpbE4vuc9v1+4n
	/YRz2mQO37hsk4FguUgPnswG8V+dbSDgpLfrIQow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99662da2-61b4b083-5868-4365-b090-fa928abe5daa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d72d79dcadda77b111d9c62ac5c86e9e716dafbd1fb79ef02c008c7de216d2cc
Date: Thu, 17 Mar 2022 19:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647546084
