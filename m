Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 800441844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644976885;
	h=To:Subject:From:Message-Id:Date;
	bh=lyOJix5LsSJ7XK7z97kPJrGssV9UqNU998N+50v5HDo=;
	b=iv9XIs8GLrTmFC0xMLezvKur1Yw+MpBTBIW8NETOWHQ+DBcpY2WCK9tAtdsdLLPe
	8+uaBT5aokRArUDEx2AJeRh1XpdgXPcIsYwZJuT0XsO0urjycvz4svCezyS+nqe4VYQ
	2jmfNSrx+mGorrCd9mtjuqHGQM4Xp0YstMQh0YA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644976885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lyOJix5LsSJ7XK7z97kPJrGssV9UqNU998N+50v5HDo=;
	b=VYXnkwyDAvuVKfjG9GyQuTR+Akl3xFcNhSbVFxq2QN8oo+lH7f0Ryr+T6vXBzeo/
	3fjSvBD0JH+BL7WOvliBUI7mKkujdYK7x1bNwoh8tZ5l48uk6Qmd+gzKc5NOxHJ6eJA
	Yx2Y+MkJRogrItFVVS5xAw9qssjrEc1ClEIPisd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f00434c32-89eb71bd-cd2c-4b6b-89ae-45089c37ae71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2744469da3d8652fd140804eb92ad3a0ead7b7410f9ea7fd0297bee00abb619
Date: Wed, 16 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644976884
