Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF292F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646766685;
	h=To:Subject:From:Message-Id:Date;
	bh=N9N87RHqlRkzgIS2lmzRAjwuld+2GHKRab5l1U8ReKo=;
	b=QbHFz0UmIqkbm2GE25mSRPXCs1trIDZX4Okr3Vj54JVShcgWCT9ydFQXlVxFKbn0
	/wwLkrd02uS/B9fR34oQ/HH6OsPykqIzfDZ02b5Qbo3nhQ9xZ6vuayVhhHRp/DLlw5R
	fuh/uu3AKaiu+nk9BylvrEf42VmaB+mr7ekabP8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646766685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N9N87RHqlRkzgIS2lmzRAjwuld+2GHKRab5l1U8ReKo=;
	b=fWFiU7VZR2F+LH4lw37r6Zb8Fhi5tLQBo6wkWYYIf1KgBp5hqTWMES/fcAs9xO3X
	VB4JNM+7+i/LYiwjKk389yIsD6kFEJe2MJ5sUX9mMu4N9j7+i1a9LD/N7XwHC/Us6Rk
	+u2NS83A9emdfJAM4gU+UXauQPvXoFBLE/BkYyts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6af17a49-95c60422-6e1c-42ae-a636-de7d6b670257-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5702e02f92b32450476081948a006e805acd25a5d37ff98f1b6a62d60e97503
Date: Tue, 8 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646766684
