Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DEE7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647071484;
	h=To:Subject:From:Message-Id:Date;
	bh=qzc/9uMdtRDx0jsgL4XX4DbPBCe2v1ChUv5LA2ibsWU=;
	b=U03h8V/oLNFp+HQjK3G2KzCmkQdhTyWPl8uiD9FwPfyYKHn+7TwiCMZupa63xAT8
	FXnYMpfOc8vmJ1SKUeWE+imef/l0A/B/DZsWy1kJoJ723RHtzOsx1agL3A7tSyk14ds
	/19BfNBMIcOMQ54oobX6juGo2NBfY6ufd7hRy5R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647071484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qzc/9uMdtRDx0jsgL4XX4DbPBCe2v1ChUv5LA2ibsWU=;
	b=QXGIGQdM0+Gs1ZyKqLzOvUVazmO52j0UY87veo3wMekzgKfb5xJW8+sMgaoR0u6S
	ssbbAfyHoSiXw9PxxhSUROB2LfMQmxmJxhtktjpU1iTxoIM6AjzhhoSs8QplMFekGco
	yf0xwVK5Jx85SZqU1zAgqvZ0INylI/ON5S0LYaxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d1c5b41-bffab089-58ae-4764-b294-f0952d517816-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47965cc689d0bec3221334343fbc8aca384cd1032ac7a1e0d3e78a74906ce23b
Date: Sat, 12 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647071484
