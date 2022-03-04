Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D92C47C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646422885;
	h=To:Subject:From:Message-Id:Date;
	bh=ibVAil/IQeuYjNIwI3fXm3vyQnuyfHc6IHBxnnn/2lE=;
	b=P8CBosKr+ysktIUnSVRrzANBQD1a2NvVRAKB7qUIaTKtr8KuVIktysE6GVwN4Hpe
	VEd0UrUoTeu2mye3Ge+lfjsARWqYG46sBh90KjMFWRetS4h/X5kkRU7uGRr4rUg1k1i
	ed1f0sUu4X8ZujnLZrwnPLOU3iStnb9uPcLqKoXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646422885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ibVAil/IQeuYjNIwI3fXm3vyQnuyfHc6IHBxnnn/2lE=;
	b=HZrJFrQV+G5RsizxOWg++j/5j0Y+sRy03iAMHxi1FsyqHZZvVhYIP2ieCAB8PA+7
	f1uZQJm/XPcc+wMg62GoJf+EZ9JXXrqZuUWVGxxIhgdnRBFXGaqVlqLwPJoz/Z95OUh
	Fi6mbZzs/tHbRkAPjqewt5yGFuATk4exIUn05qXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56738195-a016a297-becb-4295-9ff3-50a847098fe7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7cfd18c825458c7a7328d125d37777b134ead0b7b983d42baac39b76a6158b4
Date: Fri, 4 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646422884
