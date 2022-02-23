Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602A0818
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 14:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645627584;
	h=To:Subject:From:Message-Id:Date;
	bh=rx81A5lVoiTXkC2tRjX6UWk1ZyrMYAA1XSPuZ9E74Zg=;
	b=fiJ+n/XLK7O4kJYvR2dY5IKIBoE1wXcnQUTZPJLvhXA6clVGi5b4X1MsCnxrhmeP
	vZdCwiBw0HAPn7yOcKYmgTy3UVR91bN3MHeu3xb//K8+YS75uO0U5ZK2/TS51WvC9yK
	dMciBBA53SoDMkv0z17aWhUkEoT/hS4UaaPFSUJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645627584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rx81A5lVoiTXkC2tRjX6UWk1ZyrMYAA1XSPuZ9E74Zg=;
	b=Ce3LI1foElBTJuD1pfLTNJA3XAsgoPnqfmohgZAdoXwH0Vx6JXWcFau7FVb3SgGq
	t8sK2nnRo2QmIjvkRefwmebWaVbVkNhlqy3bY0R72Y+oylYkNolU8U5chpBmxyy3evh
	WhH+D5arjWBFQwH8QmSRwke/YsAb5+/t3DmRDTUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f270c3104-c60ca4f4-3952-4953-bec7-520a89f22d01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a189b75dcb7a97df536ba368d8fc86b05980e9cb956e8e0a0c82ca284442d0bb
Date: Wed, 23 Feb 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645627584
