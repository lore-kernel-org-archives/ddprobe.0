Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A257A3B56
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647467484;
	h=To:Subject:From:Message-Id:Date;
	bh=6YAZ5oLzRS3JOABJ+hlClvRQXAYj8Em+IC3mhlABEDg=;
	b=RwsgkRqQGK+dT+kI4JTuklG7ltVqJ/w4lFW9UT18/kLTnbD1N0ccVI17NDp/8MS+
	/cSC5ek0riGAhvWTaK2mKx6ODQWbacobRlQsEHqB9xEwaxCA1hSZoi81wrqE5KBkzRh
	VjVqHx/g/bLvq/6wEO7z2KZluZjo/+FBmg9jcLt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647467484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6YAZ5oLzRS3JOABJ+hlClvRQXAYj8Em+IC3mhlABEDg=;
	b=CurYp5uZ9SVnGW6QscQxQ0YBPDgRENEnSEPrY3AadjQXm9+KCnqltrEXQfYDsfgz
	6XpDg91Mlb3eVwigHT0QnQefwzDdHC/1Ipu58GsDUwfpg7xmxEFD/6Rrvy99vUQ+4JF
	Fcfl44zUauXcbHvcU/S0DZ6NuhAnXTyOIaqTBLwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94b6d68e-0991c15f-a271-461e-8b8f-a5cb4025de37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff08df9f779980f24ba8bcc1522aea2f1fbf90639ea3200c954f07e0c8cd0bbf
Date: Wed, 16 Mar 2022 21:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647467484
