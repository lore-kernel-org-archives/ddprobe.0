Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABCBF1365
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644971485;
	h=To:Subject:From:Message-Id:Date;
	bh=FfYD65nVrEdKSjHenvrtOp930TVXIQQsleh1Xn/zW/A=;
	b=jHhHPm52u6i/RNQ2wXyqF4SNEsX2L0bI3+aLl2nKtO2+0DQszMwB+FLwgHqggKB3
	elCbNToPLeBs/DP/2vFCqbYYZPvgsc/1qdkNNW7XXdpf2CcGjCpcdgziYNL1KGxTcqY
	VXP6M5KP75Le/rSGZrQeRdVWMyq0euzp7y5hnDwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644971485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FfYD65nVrEdKSjHenvrtOp930TVXIQQsleh1Xn/zW/A=;
	b=PT1FxzcsOGXtaw00rtvw2C6DXBEfuNLyyG4/+TbY7vwcqvYCl/La86LgZkPqRUy8
	i9NkZyI1ZskO/S1wAA1fB1FnJqFTuHu/gzSZaSl8Ed77Tp6cqLeg4omfFFbLKzV6V5L
	0k2nWsf53ZmsmYuSPj3qoJt0T1aH9QQjeguAT/GI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efff0e68b-737bd925-14f4-475f-ac6a-1c681ddc40e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 989ad2816380814a3d37cc2bd8caf0aabfd008f7b93a7ed4f636787b15130f9c
Date: Wed, 16 Feb 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644971484
