Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726957F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659490252;
	h=To:Subject:From:Message-Id:Date;
	bh=UufUu1dhETosKL4gA1UcddFIOe39lVEWShv4Rud0J4I=;
	b=O02lNSlqgDpgqLH2pKx523juG1yO9XCoi8lfAX9QN8b8wFbY0iJOTSIT8G+B4AbW
	vw9BSysPjOjeYQM/c4D2U9pb/T1oRHpn/YK7MqYShrgJk1l7qDZyjYFZIW2eQ7c7TpE
	UV2AuuquJer3oJXR7YZZu1ukXSiSrnT/4vWB0mHk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659490252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UufUu1dhETosKL4gA1UcddFIOe39lVEWShv4Rud0J4I=;
	b=Tq0y7yhTJlM60fPFntnHo3H+Q0f4puSrOcK1NZAJ3/Vqbx8IzNzubRlOMHyPe7cr
	mJHLwFq6XYv3hhBMjRnf2wxqYRNok9HTRtfFMEjjpEddRb1SuFbTSHOJGpRZJhXy1u4
	/7JLUv4gb+3upn5R+AMpGie+oaFCg2JyUCQDBpBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826153b795-6ed3203e-2f6d-4243-871f-a5e710991e56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cddcc7655e4518e4770948191aaf5b01bcea2c22773ce5e27298093886d75ef
Date: Wed, 3 Aug 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659490252
