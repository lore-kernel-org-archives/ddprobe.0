Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2632E2C9C
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657789612;
	h=To:Subject:From:Message-Id:Date;
	bh=Gc9pV2ThdyFOUCDQIh+Ji4azpKePHn2JJAJTq+fEmBk=;
	b=MXw5yIGsvio5Pd/QL7keh8gyQMa+tL2dZh/i/6i9x6c6xzKiBA4ziYfWcTmdVQy+
	qZhTJDjgHOaHDzvwoS4qoHSN29LPinfsGTuz4oYjaM7eRPKQJizeyiR+DGxexOZ8CMd
	9r8J1PrlWn4sT0j5jXDdqlvxxckE2QChNF/PbKYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657789612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gc9pV2ThdyFOUCDQIh+Ji4azpKePHn2JJAJTq+fEmBk=;
	b=N33wtUE+swcVK1cXehiZHC8tWXWjKZJURa78lu23odAhSbjk3DJn2EJh2bALYtsV
	aCK8Obfsv006M9GmIdbAA2yNg4VXvWJEF7WQ9oF8ln3Td8uv7up5xeMgBIF24XvWZJF
	lzoCcWgchHg/F00exahzAhGmCJkEqfbV+NippvUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbf6011b-3359a8b8-b8d1-4e02-b624-8193af1cb18b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0fa142b08b78a88d178e39a067a8e12fdc42c5eb3f68ce60f5c0cac36417860
Date: Thu, 14 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657789612
