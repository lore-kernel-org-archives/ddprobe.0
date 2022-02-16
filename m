Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6FF187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645041685;
	h=To:Subject:From:Message-Id:Date;
	bh=BA/u6DjKbELzvrjihvVvNiv9wUmfVuL90K03DIzBaSk=;
	b=Ry4m1TlN02GXTXq5rgjIT2MtSgREpc3wek7y8FWCGEGT3/BbQzNaqZv7UPOR/MNJ
	zV9Lopgz09iLkUs845npcr4H9RCYD6v9Rmo+292paEEAuAZ/LTGOYWuktPoWDFAJWJx
	8j4QIYYtym9eDtk2HGLbwaGLkK9c5dGNBx0LAe5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645041685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BA/u6DjKbELzvrjihvVvNiv9wUmfVuL90K03DIzBaSk=;
	b=TbYwKXw/kC9VFemaFi49LskzSu1oq3In4afOSCv7+yAtJ+EP9HfZCWg+qZCZXX9V
	0o8l7JnRjR1Yl4UxY7ql0yRyTO1XfAzVWu5rzJI/7yUfqOdTfj9RAbWzLHlHWcZuJPo
	PVicbhEcazTThnRIvHDScyOz7Sir4lmi02N4ACx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0420112c-a59954ba-4dc3-4e03-b294-a8a8502462d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92f0a48a9c57b2ee493bc5a7b57842d6c1e7a9549861d2f0a8e37ea5fdfb4f76
Date: Wed, 16 Feb 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645041684
