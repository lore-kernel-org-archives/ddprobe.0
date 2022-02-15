Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BCE3186C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644958884;
	h=To:Subject:From:Message-Id:Date;
	bh=S5HqrgC4QguYbHbZwhIrTbTGFRSuZ/anD0j9dQTsG0c=;
	b=Pro4/aXv+S9mvbvxw9EAYZXY46Qp1PY0COKuEZxl3ElfqpY6Fb/Fk94EgaKdI3fT
	PKrCKH+pkUKMJ6TMSI75pHNl69cq9ovV7QZzANMcYb/vypSuKJHCrDC0bJP27f38LMx
	o8KjBe0Wo9hWof9tVqnC42TVjXXHkwrrAf9kyQm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644958884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S5HqrgC4QguYbHbZwhIrTbTGFRSuZ/anD0j9dQTsG0c=;
	b=EogrgI/zkZ2UXdqeFR/0j31CJ/+7GyZisWE8R7o67y8J1nK5epOgF60VQwdVpmSL
	7Kw9jCqmS0UpjVtEuiY1fMvHEPMlfytvbR6DKFq9i1VbMSd3OyPLeKC2/vUaVyhnPOC
	yT4zXUZjuxBoD842cDqTFmetW0WGpyiXBJsRexsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff30a38a-3a310d78-e14b-4c18-984f-64460fe3d85e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64825974cc7d25a44a8c0dea8f3dfcee5b63773f35ba47e21d9313bc28c61882
Date: Tue, 15 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644958884
