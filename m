Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5443848CD
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646041284;
	h=To:Subject:From:Message-Id:Date;
	bh=tW/BJMT2XWtApQpMY+Jjgwb7ggupyo0fwRZfVpsa1vA=;
	b=TA3EmIB2EN8vQcpElQTEMfJCe+AyXIE364LO2HXqe9OFcANGlYFSWhiIvC3UdZxJ
	atJJNfhG4TcmlZ110gStk1OF2BPXhZ9X/1rVA0PbO2cNV0PUrz4p2FwLQNVxrSKzYOo
	IynaYqoXgfalTr+c2sRVLsy1USGpr3awvxwLmcy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646041284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tW/BJMT2XWtApQpMY+Jjgwb7ggupyo0fwRZfVpsa1vA=;
	b=Ei+OP3EmDLm76V8zkaHBT6aGVIuYMRMTCy22GXGJCDvP8Mz5wXzJvn7dZdt2SwLL
	WJTVCoEyRcyltD7E5MQDeEwTXAnlnDariCCNwLdQj2Jb49cvX3+XXmcJIo5c039P1Tl
	7US0YiiRekKUziOQ+/MrV869JMBzfuBBKDxR6kbs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3fb4c077-e3e07cda-0bcc-44d5-b6fe-8ae55b2cf8a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a7aacaca2c6d6d3d5e7ade8608870e79a5db7a246a3f78a6a34fda1161d3d1a
Date: Mon, 28 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646041284
