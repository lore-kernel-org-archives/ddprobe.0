Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2E9C5CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647027685;
	h=To:Subject:From:Message-Id:Date;
	bh=clwo4ddhS5oX3d4Y6S8Kfii5oYlmPGiwAaiqr9P/rk4=;
	b=fxN62LquTqUYg5JVEN0a6qyEvnIRx+mWoqcheNQhl+EESKtU/CjR/kH26RWyCs4U
	1x6EA5LFzUdsbgTyBbUpgkCph1f3KTnH1kHoBtFoSm8URCOYEYoJI7E50mqEjMiF6Wd
	bp5PGvx4tuxWUDq1A17DO/o8/yYvcPJ4uY4/a5hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647027685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=clwo4ddhS5oX3d4Y6S8Kfii5oYlmPGiwAaiqr9P/rk4=;
	b=WwhuJWj41/+cl5lf8nebKJgzYAQFdczE+yg7f938yxxUULXeWSqxj7rQJAnYhf72
	ZLFXvpUYGBZ/LfSmwROJgVX8+I6opyab5u6lvlb/5XUScGhoo2s87eq5Radih2ydbx5
	tl7QzT4rdt+OMojCIKiFPUyKQ8Xdvfr7zJULPwmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a800618-c819575f-1022-4d17-9cc5-acc62a0c908b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 744152a7e9e5be999d06901b6335e54b38e70928d2d085a660edeb089ef69266
Date: Fri, 11 Mar 2022 19:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647027684
