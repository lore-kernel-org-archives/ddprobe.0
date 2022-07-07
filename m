Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41BB32563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657215412;
	h=To:Subject:From:Message-Id:Date;
	bh=OL3AaopGYg90RD8DYbNbnxxw4ZffXEps9bRcHzJ4sTM=;
	b=bQXJx0iY3rMLeui12rPoHpXncjompj9idegw2mDV4NMnaVQm10DGeJeh18QboRYu
	mQVR4FdQ6xCUTuDnTGvuv35ditkm15xwqHFpr2yOeCMXk8fuSREWDZazBbVj7AcKm5+
	sXhwITlW6+eb8IQxa8cd1ZB4eAMybH4kMzvzI224=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657215412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OL3AaopGYg90RD8DYbNbnxxw4ZffXEps9bRcHzJ4sTM=;
	b=XEc+6uZnvUDsRegqRYgfiec+mElgHD7MC784IgkzwOeu6QzbNmZVbWXAKkKOoPtL
	I+/ARfx7wHS5Ki5ofcXyDJrxxdqkXn9gl6XyxfzaB/EgdOzKoJ+DrynyuLRuPeXpunA
	ZHKnPMvfhfzbP6ovE0SqwK//h/r4TjDvK52wkLV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9bc6872-e359babe-b508-463c-8af9-8c6962905868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1929fb677d1c64ee2d642988dee28d89ebca3de6fb804775105bb0410714234f
Date: Thu, 7 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657215412
