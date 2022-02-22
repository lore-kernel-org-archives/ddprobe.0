Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6949D7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645518084;
	h=To:Subject:From:Message-Id:Date;
	bh=4q0lYQCZJu2PrZjMwbron4+JR3zY0UDJo2nXzF6Jb/U=;
	b=eIj/VXCY4wiBpvicHZbNSzXlAvtrFWC47U+9xqqWE4Ym+ax/3jwjCcjqDJP2QnQq
	0czOjIib8o3iLx40XMkDxP3bzy4ttyVE7/PJkeI9wPQDxacP1mgmJrOO1Sb5XIPfyfw
	O0c3t0BvPwbVez7CWKWjdgLxTTvmlQu+jMmZkiX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645518084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4q0lYQCZJu2PrZjMwbron4+JR3zY0UDJo2nXzF6Jb/U=;
	b=Z9bmty6JzLlXIO4wd0v1/R/gMSjpGdUJ1BFUA30kqh8WZ7e92BqdxOH1Bg5bu5fh
	EDjbI+qL0fsAoZjg6iYlWC1QojpbQE3Wpc/PKh0kVeKGmC8G7fMJrvwFyPbpt4KSnBS
	a6y73X5q7lktndy5okvcRNURvoei8NeS00epEASQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20855ac0-5994e62b-6340-411f-b3dd-170f98002beb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f97c7300dcde24f25db1bea5d4f36960605dc57262198d451cc1a7c7ea700007
Date: Tue, 22 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645518084
