Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EF3C1388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644925584;
	h=To:Subject:From:Message-Id:Date;
	bh=rNFc+724j0gj5bmkDddVSMK7/xbIuIv7zkHWDpLyatU=;
	b=jDvNJeMnu9GCF5YcuRvQiL2th/R9rETHU2NBZd71+Y1cJTlfSJ+cybX+ka2WmdO7
	uZIVDCX4z6JWXXnHa67t2xk379jsUOCirq9ypMUaAPNi+gvuiKgKcuej8VNdLcbQLAp
	25HNpiBKgBu1p4P6uXQHebayT+uIol8QsBUA9qcQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644925584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rNFc+724j0gj5bmkDddVSMK7/xbIuIv7zkHWDpLyatU=;
	b=Rc9vGsyTskKSksm8Z8ZUM3pRjYzbJx+paI90HF56Gd5LA/0YFWhxKrz8BmsI0Dg7
	AxFEU7yUtkNHp3dhQi9A3APnioMIMeR3SfVS09wGHiP8Wby+FLmKm5yCVVxryK+qwWz
	/006nxi4c0qhd5cvqgu/GPGsdvWgG3HjIOQLQNNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd348572-2f689301-ebe3-4298-aa0e-b5cd39747849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bfd494dc17732e0b8198b98c67ec5b5767e433c7017ab56523e9a670f5d1cd8
Date: Tue, 15 Feb 2022 11:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644925584
