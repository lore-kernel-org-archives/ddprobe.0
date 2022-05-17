Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4AA10F8
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 03:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652759579;
	h=To:Subject:From:Message-Id:Date;
	bh=j2D30cuHiIhZnX1AWOchMjyF6kf5/RjaMZeU44Ck9Iw=;
	b=flHcxGmmIjTIJU1UoOK0z6pAMnSAH+HCUW/5XofJ90gsFGfATct/3AX1wgw6l+jj
	9v85so/iVr1HvULA3Y/RW5KoPu4Gu6+ktRcU8nsqRGYMxutc4qeQS3m/BbvC1UFhzrx
	HyMh4zdx6Q77sxbjzJryiLsV2mLo4MmIyE2jbGKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652759579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j2D30cuHiIhZnX1AWOchMjyF6kf5/RjaMZeU44Ck9Iw=;
	b=EKzC1FWp8fGF/2lKjV87+8hIzCQNqqsMfyzTe+/rbRFRA+mmzQqsrsHf+7TCz91I
	e7fWszzu3MqJcNjIyFu4PwpFGRaS6e/kCuGEC5lKfXsbY+vDbjNlKUyoQ5UbZbOPR/n
	pscbaZ2x60pKXvYAmm2reNlpLGrJOREnGU6xg++U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d025ca88-89e126ff-091b-435c-aec3-cd5bcf5e39d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f7c1165e2fabe17ef6e849ee6a73280bac157e68e7a9ed68a47149ee97fd191
Date: Tue, 17 May 2022 03:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652759579
