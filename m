Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777637A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 04:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647058885;
	h=To:Subject:From:Message-Id:Date;
	bh=JvndojS9Ikh7z7fkn5/PVk7C/YowaDH5s1rbw71BY4k=;
	b=ckuUZS2PnmQDICxHK/3qmSswS7i0SSiAiSoFBwAtWUFLGh1eVXuS9xZUbAKilkCu
	95uNz3rWw4mRxYaPSGTxc8OYg4Ag4mtjDQsg3HIGj7fnFY84jlPmMIPJ7g6Yg0jIoGD
	5RL24ok4UFnhO0PznuzO2SVAQ1L7WXfAwn9CJ5P0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647058885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JvndojS9Ikh7z7fkn5/PVk7C/YowaDH5s1rbw71BY4k=;
	b=epMdOnX6wMzXMAxuKLg62fCmpSiyTOJEouJqQl/wPFOR9z558SMg/iFpG+LapOgy
	yPuXC/1LzQya5D8fEYDkRhMPSWeVNTqPBvm9PLCceTK6K+HdTtp/s6fwGVhlkUuwQlG
	0NoPIYwRGgQQbMfOBSeSDB/t3qfQYwJbY/LUK5Co=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c5c18b6-6ef5946d-ec4d-443c-9482-b94ba198a037-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39fead872294803fb5d89ff7fca95a900de0f6fe207135b9c3000f02273fa185
Date: Sat, 12 Mar 2022 04:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647058884
