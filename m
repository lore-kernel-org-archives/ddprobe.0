Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9421844
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644966385;
	h=To:Subject:From:Message-Id:Date;
	bh=ic3aK/7GYhIwwuoSfsCPQS6MZtB52Zk8q5Yai/h628c=;
	b=dDPndkOV3BmPhJMdBWnPgmRpbprboROk24ksHAmoCNd48WOWFRT210lc+3jliiXp
	7PLXDLCzYiEb8qZAPVMxHK/5ek+N0VQUEeIhMpjonmk4UsYWRS14sE4BVyzoKvc9EVi
	na1wEeQy9br2XADOy0mEVn3EqN/M1ZIzsboSC8HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644966385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ic3aK/7GYhIwwuoSfsCPQS6MZtB52Zk8q5Yai/h628c=;
	b=km9ndrfe9LtGu3vdDHaR1Rw2vdefzHR5KtOotE+WfDz7Ttw+47Q6lEFw4ADzvc0q
	rHRsxF7nbxp5+B6pesKaauR4rvx/PvZKe288uWQY1lVHMTFZZgAY7NuX3gDxKcK8R7l
	7LpsuMzDUeanJu/azVhUK/48erwircfFrIJagGuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effa314b8-42d28466-2047-4dbe-8ed1-73ff4b4658f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dddee03eb93abe9f895d9255e9e37213336dd34cf14c39a7375ef490988dee1
Date: Tue, 15 Feb 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644966384
