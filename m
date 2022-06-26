Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C742F3D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656254212;
	h=To:Subject:From:Message-Id:Date;
	bh=VLg6xR7HgCNCAv0PyWsVAKWKx7ypt2i6D+lDUc39lMM=;
	b=VU1GoivEJKA0T+7GCtRvDCq6wh7C+B2Q4hKg2jVGuv/85tvCAT2L5TaQCvngPURp
	kA2gscVfC2NXbuQPWu2Nycejt7bUZhLqLn2tmCjXmAFaeog5htkfUIDLvDGD9U81aid
	qpGe8I0y6avvGCYE9HgSrBrhGMj40n86mHqfS9os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656254212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VLg6xR7HgCNCAv0PyWsVAKWKx7ypt2i6D+lDUc39lMM=;
	b=dbXqMYp6FBwZ5rTBvU8yTvqrl2r2YfU319t8ry/oVHMBmof+vEKRQy9MNeJGdWB0
	7T6K2pPwZEsPWaU6yRRBs7c2G42ycGjbzisMm7O/iEm1WoRsBlDYC1SQjUrPXMHejnQ
	iB+MFXZtnQbCz6ErwDQYOEkB+WQMWhyXxLm08+m0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a071a8b2-0a47bf0f-3b28-4614-96bb-6d2a705a0277-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b902ea3b9f8ff0623d63f14c26b5ef297165bc277bacd5c11f1e18a1caf6275f
Date: Sun, 26 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656254212
