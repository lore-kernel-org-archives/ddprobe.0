Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87A3757D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647877884;
	h=To:Subject:From:Message-Id:Date;
	bh=BW6opYdgoJrSWiImC/rV6oxPRnfLThf6U4LHjfpfdrs=;
	b=dW5Z+1st2h/EeOo2gENlL2CQ4ly2P3Jm85dK9rDWYZTPsG6nakZybXOELHiZ2FfC
	lqVSzsQU+X38OeBivJRW5Lyw/sHPbRyK9/KuuMhBLoO6Pw/3XStFByzivaEWm2g6bHu
	/7KtleCCyo315FOPlKJQrHdnke2uPh+JZ/sUftXE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647877884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BW6opYdgoJrSWiImC/rV6oxPRnfLThf6U4LHjfpfdrs=;
	b=VlSEhEyPvVi7cYJfZCDoAWu3n2ba0aJ5rwqtLNQ9vrEV6yR/9mY157nMH8fZiMuM
	2/RS0JprGPrgSahm9n15+afdqQiDWTpEBDELoi8qYRMij42we1l9Ce8w/ODxofH8Xqh
	muyirz0A0F789EkRIToJYtpL5F4ZWLUoW17kwh1s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad2d0b74-e40c18ea-e228-42bb-b85f-d17a3e1c0e6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c250f486ce07f4074c44c47c0a0b4da64b7d22933461f315585544fa36cb165a
Date: Mon, 21 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647877884
