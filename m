Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBED7A
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 08:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652948159;
	h=To:Subject:From:Message-Id:Date;
	bh=4t//52hWU+/dCmo699jm8MSc3QARJgrsoCj0K8MA8q0=;
	b=jxm+kPqilKZFkSK6ytTheG7AXOYJk4vFziiccS/RcDLRc6zRR9pdtqWTM1gK3U8J
	cmKAoE4JzoccDh3sDBnyWU0+geLyg8JSnt6NVIvWCyiT0RsavKnKr0WiFpnluSwjhzF
	D9D54nsitOA7pEYxFGf5X5nq7qE1/sFkzTq+JVEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652948159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4t//52hWU+/dCmo699jm8MSc3QARJgrsoCj0K8MA8q0=;
	b=TtfFnK0WY61r2BUuOpNOVfyg03eR4MipOzpQ5RwsaTPwxJJBE+5kWAeYm3R/lPPq
	DCGoOLV8mniB0hyhHWIngQnEI6QzDuJEo/Pg9QwnIqQ0OYye4B0+C2rnAINlh7amdYN
	A/4++reHDldC3PENistbbq4kS6Sf5vnk0Sq+FQ5Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180db634b54-fc474723-c5b1-4bba-8299-7732c9280766-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8b46cd92e81abd105ae5316c0a12c3639d5b58bc52329447d97fc0ac7574e34
Date: Thu, 19 May 2022 08:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652948159
