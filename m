Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4F033C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645466784;
	h=To:Subject:From:Message-Id:Date;
	bh=Tkm9/ij+ThV7G8ijsWBnZsXC0rsjb5rT5mOn7u7/AbQ=;
	b=id6wfEgHVk6HfhHe9cc790IPc2b4ruutj7ZntgvuoUTmVolIyTSst7R7fm2v45XL
	7ex7QPelzSF02zawjBlKn467IU9+Pwypi21dYmcsrkCgdO7JsjsqMfWOA+Rig3CaW2W
	bCIOr6mFzeCsPcYWSO3GIkxDaD+ic9yZLatFYHSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645466784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tkm9/ij+ThV7G8ijsWBnZsXC0rsjb5rT5mOn7u7/AbQ=;
	b=UjXFOpv9l1l2jr3vMDaeR4ZIw6CTXkqNWxtUNgziewVDF72VFrXuxtrbZ596Vfxy
	vre6fkvv5Phgc0Y1pw/hAuKWsnAPm0ulGE9eoD7C7fqJ+78DP1MW8jBpHxqPgw6eQXl
	iMS53maN9527ipmAXU+V2Yt80G/q1unbzyOTRpc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d7693ec-b03d83ff-4e40-4519-a7cc-dbe37c6abe9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8428d3c3f6309e1d365d51edb576170e34271d785233ad5baa6198beed2739c3
Date: Mon, 21 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645466784
