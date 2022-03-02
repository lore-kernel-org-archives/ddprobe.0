Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EC87C
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646221584;
	h=To:Subject:From:Message-Id:Date;
	bh=B+tWO1Os6yAexpNgouvgLtn7/8SuQBvDSXUBXUsiyWo=;
	b=lzsHnee/P/b5hSpRTQX1OOHYQvCx1xvxswGffrB8DPL+BasMpNRtEVC6PiKAQ94F
	jPdHO6+vpYGSO+NypQ9Kr8DLL6RjUlasyjcPpfwdeH6EvzdjtH2YNVxMKv4EVHbGY/t
	r+vDx7GUv1aTpt3bO9ZJVz+EQ3ecPACBspncNvqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646221584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B+tWO1Os6yAexpNgouvgLtn7/8SuQBvDSXUBXUsiyWo=;
	b=DLeeerJ/lSaoKF8SAUmTr7Qm3KnqW6R6CCDpyrLaLj+AD+ui3vzJkcvh0UZu3JAb
	5wm9RO4NaTdp/8MD2wBRwU8rg/k/Mb+iI0b34YhcVcycskhLIIIidGrjAglh6on+iqX
	9mCyrqYoy9EgY+DlA1K/2jrI0zUxAZFkGMeha5xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4a73e985-17f8cf6c-4f9a-4577-bf88-5461039618a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5fa44864d23ea4bb5ac83024fbf17b73fac6c136d8fc598ee7213974bbd484d
Date: Wed, 2 Mar 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646221584
