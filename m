Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B1328E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658482013;
	h=To:Subject:From:Message-Id:Date;
	bh=YxP27FWkKvEcUnWuyjo0+ZWijLsbkO69ANv0eGG6I0w=;
	b=CIZguiAlTI5f4JjftrkR0IllLIJBp0m1qqIlJ9a26CXrIwjeE4FbwZgv2dZSAOBX
	sKWI+BUJYcF0QQehwowH8ArJKev5vMRcILNDZ4ojBMXcxdOzl9hqu2M3XZuV0mF/2sR
	ymS/cXsu5i4WsTbodRCt+Z2LJBnkDCd5GhVyELv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658482013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YxP27FWkKvEcUnWuyjo0+ZWijLsbkO69ANv0eGG6I0w=;
	b=UJh/huUr9M06Xry9kcOLdvjn/sArUtU1EEfYVHYvNKvjC3iPSloDgQoSa5qqbPin
	iFRZphCsMvM3xMoeQy0yZUREc7zLXg9c0hNH1gE4Y0HpdfkDeR8guS5VkS7EO4gw5K6
	Qw0UEosGYUMJGrs4EozMlPe4VjRWMlQS4DwVJlpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182253b3069-1f34875c-06df-4092-b76c-779f8050d5d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10c2a28d2375a724aae4062e3143eba1706204058c460ed5daa1313d2f8bd148
Date: Fri, 22 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658482012
