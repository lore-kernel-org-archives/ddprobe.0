Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37603667
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 22:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645827985;
	h=To:Subject:From:Message-Id:Date;
	bh=c+VaOw4CSe/fgcHcHQfgIcPXB1t7mcDO+zq6BqPbh7Q=;
	b=bC8Aec3RV8EIIF7+FPGbh1tRitwCG34RCEwMoHaXYKfGqWY0z6WRksADLJ+9DKN9
	wtjy811UYGRWUUo0CeRfyh0ONbgVFPa6EbprfTgqA4Th9OSP5A069GPUuoPi4FTMdOS
	igRyaLIqH86qqVnUBt2IDxMSOoSrZhX6h/+HMiMo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645827985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c+VaOw4CSe/fgcHcHQfgIcPXB1t7mcDO+zq6BqPbh7Q=;
	b=V7Tr/OdxVK9gWFuES9cFNaIn1g//WfmJffu9EOJ054wIenHeFZxNIW3f5o3NmqEC
	6aMqIoMhZUz4cI5BAvbNpvXfIHbwf2pF9kJQBbJkdh+Wmq3tUL9fs+3kFzF1gp2uKee
	BkAwpzCHIs6yJUlWm9iQMSVLQM7nCvR/MpbE9A28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32fe0d8e-e17bae2f-a3f7-4ce0-ae9d-62f69dd6a6e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d88d1ae4245f76ce8e13247c6e39d587b90beb69510a50bd165ffaca5174e1d4
Date: Fri, 25 Feb 2022 22:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645827984
