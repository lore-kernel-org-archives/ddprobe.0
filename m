Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0711C7C
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 00:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654905959;
	h=To:Subject:From:Message-Id:Date;
	bh=kP9uRKLYr56tALaeVBiSDACT9hHzL2Y4EAhqi2acA94=;
	b=P42L4sRCMiyzAf6rjXxB9nKbJ22zt2FJk3H3/Vow8QsLDxanC75RBrv+Yl3LP6nb
	LIOxLVAaRlubP2+dhMQPLhOMpM5LGXjG1TXm/C2c/6JGypDw0zZ04vCL/ikg58s+jsM
	hGgzfgjVc/6xG/RsA4YleTd8/sAQsJxk3gLaenyI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654905959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kP9uRKLYr56tALaeVBiSDACT9hHzL2Y4EAhqi2acA94=;
	b=LmGL18Hf21vkhdU5bqdACf3olbmYfOgQwONrXzg8W7SJGelWJnWjJX3mqUhMnG1y
	mHlRGlCShghStMHTxh3cAxJT13fEHI9zSJGa+J1rOorEnoBbbDiy+IXgW9Kh2Ek2d42
	DkLmsQIunVkU921QordklLFjLiKwqMrOlaUQi/xY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815014f370-61336739-773b-4e98-aa96-b7c0d17690c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dc0b779b72ab0860c58a97331fcdde956a3709641a4ef7cdbeb36fdca95eed5
Date: Sat, 11 Jun 2022 00:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654905959
