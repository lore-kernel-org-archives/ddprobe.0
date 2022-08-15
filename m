Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99E11398
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660562452;
	h=To:Subject:From:Message-Id:Date;
	bh=XBCw8nReMrIrR+jBawmmUlAGNwM830iIohTsO/9mxmw=;
	b=f5lzaTU5gtw30BUl2IkK0rtpP1ea2hJV5JnzKqazzqAysUkLvfUgnTgUwjYMMpHZ
	chcwAKeMUaXdWXjx1SDe2PSPOyk7BPawf6xx8B3QD49am+wnZ8ok5hYdwZFh4wt4Ao8
	6LHAUedfhr6nJ+MocT+KegwArUcCiwWZcDA7LV40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660562452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBCw8nReMrIrR+jBawmmUlAGNwM830iIohTsO/9mxmw=;
	b=RQwYOxSDDCh/V9TsPfB6kxKKfClEKv3JM0GmqV24wOFUHbceYsZl0IJzxL0iULC1
	/JMhVQjuCubZE+Zt3aFac3k0JP50/Z4Y7hi0qp0aCXDrLvMaSyaPr2Tsdj0zsy1WVJd
	Xrh/XqoONleoghPHkMKALFr2oWUYzz5hmhp2RbrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a13c307e-e588f93d-ab5d-4232-86a3-fdd52e07a3e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36c898c82e008563740a4b497badccf85191e94e9dbe7e6b2532ffb1db80e8a8
Date: Mon, 15 Aug 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660562452
