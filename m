Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFE35EA4
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645378884;
	h=To:Subject:From:Message-Id:Date;
	bh=x5o54ntNNk0q2NFVUPfFVUAyT1UB+rWn0EzCTcv7nk0=;
	b=g9JWklDBOLUih9ZLfHq64+XhPUP2FT3F40wHAegk5pb9APNSDjDhkNNUqhNuiARP
	cDuYaDDtHyQoePSQh3OMdeXlajbhbG5TEJHDYKq/qL6iJbT8wo5mXa+s3YmY8CRQ4Zw
	ACkKfHxBh6ztWJB1RBi8ISU20yX8aP8P9ZlbfCp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645378884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x5o54ntNNk0q2NFVUPfFVUAyT1UB+rWn0EzCTcv7nk0=;
	b=RPrLSwpmSCwhY3vqwZRytubjuuNCoRDLimVLWpV3JvJ2Zr0+Zad4BPqp+D7ZEkcD
	VDTtqcL2BRyIy8ywYJmSMnI5JeJDvUa9ZUIK9ur+TNVqTqU0y30YXDkTkBYwyJjqTjW
	hnNFjFQaPXOCN68FDVv9TFFvJrP47XFWiqbDglGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f183954a9-6352dc9e-794c-4526-a1d9-ceab089e8991-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb3fb025dcc4c425b7668407146ac6a485d6de0a96bf9c5ae3faf05fa5f486ed
Date: Sun, 20 Feb 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645378884
