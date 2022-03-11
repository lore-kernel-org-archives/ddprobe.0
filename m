Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89B8B33E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647013585;
	h=To:Subject:From:Message-Id:Date;
	bh=uLfFA2umJ/I0xd9CPgXZeB0tsPp2XxPB+NpqbarEhOI=;
	b=liDUVaAf9sAeqEUUDVZzd2VC8iLJcRhQWWs+HrJotqC5T2M24hLIUNhXCG9DSWAH
	iFQYjOz0IfD1kvn08/IFhPpr6uf3yfV42LZHXseQwKZ90gJYKfTHX8WFuUd8V6mbpr0
	5TpyqRdOh9FX4oN0esyqxzlnLm+0zrgsIYBaRAfw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647013585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uLfFA2umJ/I0xd9CPgXZeB0tsPp2XxPB+NpqbarEhOI=;
	b=FaGOlvnZjelfy4zGo42BBo5MLoc/JKT46+l4tLvsUvodpy57tNLFE+d11ZoLSV6a
	x6SiqzrwGQ4dhLDh0WLefODlEiHERS7/QhMYBzhFhcrdtCeSZW7DmBqtP9Ic+hoJoCI
	9rkaIpGGPqAGi/72KHzK+V+Mo3B5M1PTTqiJN8d8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79a8df8c-884d54be-c5cb-47a3-80f4-c0bcf5869c45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76a2fd7731150e4d463eb5537d99e3bd8b9b3407f61aad1259a7839bc283ce8d
Date: Fri, 11 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647013584
