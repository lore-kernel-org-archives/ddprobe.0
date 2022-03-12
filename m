Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934207E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647072984;
	h=To:Subject:From:Message-Id:Date;
	bh=5R48IVlB8iBLVeX/NrkPnBdxywRXvBh2yvmyQmhj5Gs=;
	b=kf/b8Aq0TfrHbzujMnjPQkvptpauQ6M8UvCmE26ogeP3Q/cNK35uXjiy05zcssKn
	YMYEMYKSQv8WDlOkgntGdKJQBh/4H38kFTbruGyxDyjHjpDyofjcTKajcxMjN7kXaYo
	Nh+58XtC9a8805RtMis6Kp+a7MtyMsc7fJIjSQxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647072984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5R48IVlB8iBLVeX/NrkPnBdxywRXvBh2yvmyQmhj5Gs=;
	b=Ct5g3NMLAfh3GIk+49rCB6aeuhWVn1qLEjYmZ0TrjHAkw8ZkjNxoV15f0k3myC5i
	mxT8nffDwYwVxJ/G1whp7LYcqCNj2gGrfQiFvySxIY0E5mFrRZxNY4TZ4oDaAfJvOom
	ltrA9IWVQ+itxbuEgiJT6FOZCjHV/e51/6or3txc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d333eb4-de64ac1e-da1d-40e1-aea9-fc2842f37d54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f1eb6f0bc2a9ac51021adf616415c9e9e22cca3a4216496cfea14da84249532
Date: Sat, 12 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647072984
