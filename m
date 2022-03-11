Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D840E5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647030085;
	h=To:Subject:From:Message-Id:Date;
	bh=7QdbKIri6WD8bcrOSspFF7pb+EPAXjqzrV2sjdyxcbA=;
	b=LR7o1FBBjkAVb5UG1sa+5eyTgY0XNm7OFYprzeYZWzR8MHuMEa0pTwphFK+exp4v
	BkyLF6auH6H5NY9S2EQO3jr7AaM1DcV/UmF3EFGixVAZP/gQcUYv05DatBWP0a8wXT9
	Pf9ekvcQtEDDmq2zLRwh2jYvZcP/+VI3QOm/YSqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647030085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7QdbKIri6WD8bcrOSspFF7pb+EPAXjqzrV2sjdyxcbA=;
	b=VDLetqQk6GLj5fgDJ2Wupwsr0PCPucwe2eRknkRj57HH5SEFoSmj/cNhboHygv9o
	LjC1CAdX1rXouuFmhuK1yuKzBsdicjTz2EO7bZFWSZDJ6QtMNcO0ATGryRGJ+/1Kva1
	tyZ02huhdXOwWimP0o5+a9+4TOXplVK0RdQQ8mIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7aa4a4b8-58a0712f-6bb5-4b7f-be0a-303afc676144-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1abdbd0f1cca811dd7a4245cd27896229ea87a8e76ceb429d170e67d2a99f73
Date: Fri, 11 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647030084
