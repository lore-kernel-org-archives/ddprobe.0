Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AA05127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646862985;
	h=To:Subject:From:Message-Id:Date;
	bh=ILTKwqqAPUX5TbKRjnNGxIDVYL53TtepUjlDPeOZB8U=;
	b=M4UFMK8OLqDNttdjXQwb51okDfkTJj2WCBQ+vbxbr58MI6gghEHytSunKO9abI3k
	Tr32kCx64AwiTlVYfQFr2F/gj9kvqms18uwUHJyOXiDLadeYOoVBWzEb9hdWbuHayRy
	we1hSWr1wTryv6Xge7SJf1y42X8TqkDIiihM6PUo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646862985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ILTKwqqAPUX5TbKRjnNGxIDVYL53TtepUjlDPeOZB8U=;
	b=faRDSOMEOgBx6tnzmkbGWnOQYgY1wBqwwgVTiVAKvCxNKjjV5sKKmK6YcAPIYzJt
	1IhE8qRg4FdBmgQsxhPJDKzf83C78lqGuUcoadPUu/mq+Hycj7WMNBllj/obn/i0F95
	e8tBLQCp2R6YAOpDc8dNRN69ZCWfr6FyLyhPbdho=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70aee6a6-134cde7b-b80d-49bd-8f22-8d983d7c58e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2c0304aaa436fd618a44326db44eb994384c8a83ca191d1f7548972fcb3173f
Date: Wed, 9 Mar 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646862984
