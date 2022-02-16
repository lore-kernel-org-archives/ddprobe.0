Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7709E23A3
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644996685;
	h=To:Subject:From:Message-Id:Date;
	bh=ayBeqZ6R6WAifm2hQiIQbnPJ64kFkmElPyLYFlBD1GQ=;
	b=E8sFsAojKTEJCuSE0HGeJ1kDEF5TKSYugX8Qs8qFzCxzB4brdWZiphPFVEK9hhaD
	dZyTCpeQMGhnEv/kzODJd69lNGd7lA73xo365JfYF+/Mv7QjaQ6648o2jxL3RNeEXxv
	eq55Ehw6KYmWKi4zShFVTWrr8RLsk7522l4SXQig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644996685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ayBeqZ6R6WAifm2hQiIQbnPJ64kFkmElPyLYFlBD1GQ=;
	b=Ej7cDHJqaeRtL8gL+xcBoxgUkZwjbY+eXpVi1/fxr3kIl4ruq2YL2rzevtcHobeN
	Cvu1lzo/zOmCKoZY0ZAWgkkfzKJnsB33o5dTQSw32rOVzRNZQGvEhQyZBsEaykfNWje
	f7RMAmhowzFkpuu3bOLhLdh/5IYyePd0EeC4Ib9M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f01716bc5-2c5c86dc-9fb5-475d-b77a-2ed291cb7146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 654758bfa8349f1da449c926b94840dea28bc7d816da16cbc53010a542008150
Date: Wed, 16 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644996684
