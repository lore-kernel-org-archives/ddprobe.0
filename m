Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B537E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:31:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646969484;
	h=To:Subject:From:Message-Id:Date;
	bh=H0Jfsw/pSI38O9PrZTizqbVJ3qTu8VjekFAWnh0cpK0=;
	b=cFbUKD8H+y8XXK75ry9Zn/KYPS6kf+ekVnlvCVUWJxJeY1jeJCyfFNE9bKyQr13a
	cjfJmowF1L1a5zpqQZhKnUEEIuQhaUY0hVGOcJdb10oa1QzGAo8ewS3auBs8r5bCYLD
	qhjzGpOJDUtL0BlZ2UAKHqPqqMIYqIatRzCLgPSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646969484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H0Jfsw/pSI38O9PrZTizqbVJ3qTu8VjekFAWnh0cpK0=;
	b=bfUeuT7mDZBNu5HHfl3upybiIaxBRWKe0mr5Ez8FRTrEzyPPsvU8nm0k9TBXWzz7
	osrFmvyvyj2P4R5RNT4JI2j2EcQ03FQZ5PmBo58Y+GWE6TdkH1yNtyBanERDF6p61my
	A2uF4sEqi+ZgQHyiLTndiWe2n849v2jl0879y18s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7707f5cb-618d9a28-a75a-4ad7-9c90-4e464b089f4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3db010c16bf84908a2474b7892a3d47f8dc66c89f5869c391db72992c8a08f6
Date: Fri, 11 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646969484
