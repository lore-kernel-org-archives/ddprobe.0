Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D34D2C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647002785;
	h=To:Subject:From:Message-Id:Date;
	bh=7xVsr4F3S6UW2fOf7g95szezCzXsTvKksdkVmb5BPtM=;
	b=LKZjfR9GO2P+QlIQtRTXAy3w/4Itp0TQJS4uvVzc1Z8EeM4/9IEo/VeSpkTLDvdo
	Bvpt1Ntaygjjk0q1Du3wPO+Wqbzz3Rg9frcv5fdDh03TQPvFR9Fox5iI4oGFvwBnQam
	11it1CExpWbNj/C7GPwgGNKT0qio0NqpmByE6KKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647002785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7xVsr4F3S6UW2fOf7g95szezCzXsTvKksdkVmb5BPtM=;
	b=Nv3KXDdpEJW404Cc/YOV2+S/EAkJKillQd+i4e7EqhiwWNl+u800NWhPrEzdN9mh
	BD1uI2ac/6XczkTfGL/VMMJYRk5h/YBD8y/KLszwOf9oL9yARzeguHreWdmJzWQkUd1
	iS+u1akiSlpIshv/sBsU9lFDMpWgSgKSD3NsLxBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7904144a-a02ea109-e3e7-4d39-b2d4-0d96bd136a3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abe1d82205b137d1e277cb0b79c5580b4dce11632d0319f20648032cf91b7d6f
Date: Fri, 11 Mar 2022 12:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647002784
