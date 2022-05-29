Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02E628FA
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 14:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653835799;
	h=To:Subject:From:Message-Id:Date;
	bh=1AtlQdr+Zytv3oUQGvfpmPIn/WJixFoMqXYp3f6eBpY=;
	b=R9sV2IWiiDHvap/FNZx+1NZiXninI4Hliz7N+iompe39xrZyGfKtsoneNfMTXYHX
	zLQxnV4uFl4MyU6GB9U6stQNBeNM0jnJlf8cqhQ7sm0it3PpX5lGkCT8gOuYCFTtmlY
	tOY1QaoK8dRsw7TAkLVjXeViqLMzdGfl3I5Df/xE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653835799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1AtlQdr+Zytv3oUQGvfpmPIn/WJixFoMqXYp3f6eBpY=;
	b=hApCdtKvU/jf6TFpeqWmjw1ZGfjhGDlo+jp2bwAi4KVKxHEymNGimy3EEny8EXV/
	00ZUVXrspKCr9yEce8DZNbonbnNm1iYXnz2tidFhZ8fB0+0ADVFuRMmxzViDhH8YIFW
	dH5nkbPAPd/a9gda5TCMiu1Abd8NmfVoI5PYRseU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181104b9af8-56d57d89-87c5-442b-b1db-cef5c06c39b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef180a08bed7893b76e7527cedbfc17bb429d94f6a92e10e88a9b9650cbae063
Date: Sun, 29 May 2022 14:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653835799
