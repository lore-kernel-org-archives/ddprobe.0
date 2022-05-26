Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2512510EC
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 03:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653537539;
	h=To:Subject:From:Message-Id:Date;
	bh=MEB36T+H0gsUh+8fb1wcoY9wnJFwahUPlVpBFXb6ut4=;
	b=A6wKMAy++XB3J+Z+c++uFse11654aPKkT31UC3Zg5SvaQI7gzXu8cVgAoJwBOXxU
	sTgRPBRuFkANKzL5NODPli9LwVZhVXdjtBYw4+yH/+9B1xKXwN4JJe3wZMC60Eaf3WR
	lc+mWFd1Ttk8CFZmw/vy6sy4bqWaRvvce7vdtzKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653537539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MEB36T+H0gsUh+8fb1wcoY9wnJFwahUPlVpBFXb6ut4=;
	b=ElJvWRhT2m5X1D9/nDK9UDF9U+5dvkzu98aq9RMdx4tgJe4KzXbl6/ENzR+EnXAO
	ESqr6+Fzkx6npqL19DoYWr/Hi43+yTQw+Gy/P7V4/zhTKorSJJyCliUKmvMfIeojB+f
	lU5vkjUFVmTv3+AMU5BIaP+BEHboOCq4lTaF0DTw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fe8484e7-9abd40a3-2fb1-45c1-a1fb-96f25cc1312f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91f37b0edde4278cbf011268f36efa914c0d4b95bd0b70d9163bb9fd1f83457c
Date: Thu, 26 May 2022 03:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653537539
