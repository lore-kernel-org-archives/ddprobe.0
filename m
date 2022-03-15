Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C69423CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647365184;
	h=To:Subject:From:Message-Id:Date;
	bh=q5dyiz6bE3fi1K+aiAJ7dhUwmTUHblorHGK4qgOurFI=;
	b=HQYgNy0Iv38dXK8DtneYDbLOFQAc7okZaJ4+7GbO6qHMmuXgD/br9FuAXjAyLCUD
	/eU6mWzN112C5f8iKBMd6ZvVcYozUrMFztFxKoBD/4/2BfWekcknvnpl39O6kRPtzPo
	1OjciPhQSKWDhzOjF7IKXTlniQv77nTVdR2mqBB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647365184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q5dyiz6bE3fi1K+aiAJ7dhUwmTUHblorHGK4qgOurFI=;
	b=anAmU9UF4B7BB7a0EDXBjVjqpP9LxFAvs3k6FVpP+ecqNqA1PtAquX9qiFmrXQtk
	AXiyLTuzBnk36k7thdg2yb2ynJAwhziLr57xh/LoRMwoizTR0Oymtsn12TpinpwZ9tk
	X3vRu9iqpMCf3nkcgGVY6RDnzG98BvYA6VkKofWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e9ddd18-3d6e6c02-27a7-4a54-abaa-574c6cb54863-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a83262b6916029c76467ca90030becab0865424e81cda3f1f261e8fd301be40
Date: Tue, 15 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647365184
