Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EA21872
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660568452;
	h=To:Subject:From:Message-Id:Date;
	bh=gvwPzwbgMARcXDydlN4emZ9vJmV+xRoZzk1wWbyxswU=;
	b=RUs2Ttb3A3Q7aZ+nPVrFbu46lKzwVLPfTUP8bKSPSetIiIEbokbF3lTSy0N4vlRr
	KOwvuhu4B9Y10cmlhQaEQ2CAhdCIKBSKiqfBEm68ip4/YRy/NeZUFYacyRQP1HMqC/X
	+nzD6YCZbaBKrm69d5Tr4izYFAf7xk2A+W5RjHZk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660568452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gvwPzwbgMARcXDydlN4emZ9vJmV+xRoZzk1wWbyxswU=;
	b=YrVoMVQ18bfYPcdSqYa/NstYwAyBBjgXR2+10cj+tdQoKRbmrf8guKAT5Vu9wKTb
	Yy6Q0lJJF9t/WhjDxDW+icUV1W+SQAxDRy/WLrv++2++CoyKpGPBIMWu1ATjlQUEk/0
	3oiGmRoWHv65vrizE2q3Q+5lTatcShUbdzRN6xJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a197bdde-d706ac3e-a349-457b-9bfb-8059af413cc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 507acdbfcf2fbfb3e90b4adbb54c496a2dd8dfe6340656a213d49c311ffec06a
Date: Mon, 15 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660568452
