Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4C01876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644961285;
	h=To:Subject:From:Message-Id:Date;
	bh=gxxiMW8nE/qmVo29e1oTa5tkSh/sqV9p0Ve75GeaMOQ=;
	b=kZiFmm7rJpjEeOXwWup21dfNlJjpiLMqMD8rh/BGoo+vmBrW0rpXe67BuCCcEpv6
	HrdEqf0x+Rt/U8nedDuvQaCu/WlT5Rb3QXcMYXHO+WwcfmLZ3lwQxarsCjtRl5a1kNx
	lq8QCWq3sFxcnyF340bGaWFp4kyJgERoH9BSsUpM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644961285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gxxiMW8nE/qmVo29e1oTa5tkSh/sqV9p0Ve75GeaMOQ=;
	b=I6svF0YcnhW9Y5ulOfnC+rQCBqvHlFiEcuG1y9KVbrNNKNbFP5X3JBmYUbf/LuQh
	YDBj0O0hU2fDXFkxMRCnzgenF9fU/lsyr5k95+wK4Gn8jQPyziFQ2aPSRxhrMHtDP2e
	YDezf/O3C5EezS2Ax5UbD35+fYvSYRj51b9aHabo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff5542db-6bde5ace-2b0a-46db-82ad-29c01f6195c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fd95c38cf83757d61c2872d223c6d4e32c0ba5a3b43c5e8f88b8eecd0acc9eb
Date: Tue, 15 Feb 2022 21:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644961284
