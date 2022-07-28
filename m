Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F2B7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658992252;
	h=To:Subject:From:Message-Id:Date;
	bh=wLDqpFSHbGEJUGW7lHwDaqbr7HpV7yRyW55xPnM5s0Q=;
	b=VLydN0MiPmy93FLp4rJcXmI8iFvFIJy6i1dGm0NWcGQBHyXYq/DTB/5z5kQL8XL+
	Ms2J2CEucma/iQLnKg00nspv7BakdrIADt4xneMxo2j6HrX3riEwglm/DlkwZlGjclM
	kmkJjIq6rCweQk8mBm7F/EzaN4oTfCy5nN87//4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658992252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wLDqpFSHbGEJUGW7lHwDaqbr7HpV7yRyW55xPnM5s0Q=;
	b=VrIZK8POzCxWbr0NsT233dqI0rLvLlyOZut4dZqXDQPK2i8KkPwg/vMDxSYvOYmZ
	WNlAMOXl2BMAz6feCsSaIBqYGMz4GHvl9FWRrr2NjfeFO1c+eXTWXEQJQojZf4Ibcg6
	pm9EG866NKnTuq+nxYDMk8ptfEq+TtO48yfVntic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018243a4d692-99ff15be-6e4c-401a-8b83-b213bcf5265e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaacdc814150a5acb270f5e842847f622343145c13e0832892d13b08ae8a6af4
Date: Thu, 28 Jul 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658992252
