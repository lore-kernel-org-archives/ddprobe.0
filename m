Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 887A57C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646737585;
	h=To:Subject:From:Message-Id:Date;
	bh=oiOWvo5GQjNe+qyatMQ4Ovs5b65Q1sr9WQeFpqpiKw8=;
	b=lndmyJZM0EXKPs3el4rkiJzc05FN6ytbhPknwu3oqnqF0dnMtJ1kkQYhuLeePvR3
	/PF/M6sq+yEk8cSVj/bws0aZ5F8pBi5ENK1rsd6G3e150n04N/BVQUmQHC+RfpEf+/O
	/gZPH4f0D8h9mMx3hZfihD1trT0NFmXeDY4ZHnr8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646737585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oiOWvo5GQjNe+qyatMQ4Ovs5b65Q1sr9WQeFpqpiKw8=;
	b=TOzmhZqaSS9js+qxVpUZSNlC7DNsuicNlWdnTwVcYOF393cIt4bGoYK2UwIo+HDY
	RHbaU5Q6OjtUnIrVWcHZR60tpQa8ou4k0oWrFYKOMWQ1TkAyveK/ob05FGBesz5JzcB
	RoiWmhwIqG99C6jiNc4ONELh7kX2BzlZhtu7uYYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69357252-8803969d-b73b-42ba-bc7c-a8270a6f26d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1360573fc7be667b9f12396ec6306de65e6d45ffa9de1d0a92637e11fad5214b
Date: Tue, 8 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646737584
