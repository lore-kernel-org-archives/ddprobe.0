Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704FC1365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644910284;
	h=To:Subject:From:Message-Id:Date;
	bh=2P3KP78sOkBDXa7mT6X18Aa4GnlZV+pHxQMs5m79lHY=;
	b=kDkUPbAuDkUesQadBm4pB/uhAPdW4Pkc/xQaHUoXUvyblyXQuh8pYlqt7Gp7QcjT
	pFiCX8u9ZqTc+0wWM/kp9+AYVzgW01oyMv/sOaGyubDVyIaEBHz21hAdK2AJDe4O0Xt
	dObzeVyWQSCaaEujxwnAsvI0Qj+PEPCPqZGYA440=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644910284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2P3KP78sOkBDXa7mT6X18Aa4GnlZV+pHxQMs5m79lHY=;
	b=FK5ivAj+oioqdpJPneJaMfH/jL3By9UOC+midaoVJ35wvMnW0WE+SetN4yYd+hBv
	FitqHzQghG1rw5u79os/CYDDt8hE6oQdqYEwfpoFN66uqFuH0MLkJJbGbTNEfqbFoDn
	2qsFSFcCCweyB+pdl4iYmlUSlr/Mcd/jfAilrYoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc4b0ffc-ca6cc3a9-5e6f-49ed-8af4-7cfdd379b045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb635618e05fcdf201669f3dfd590edb7eca1d5bdae3d3fc1d052a4c4ebf805a
Date: Tue, 15 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644910284
