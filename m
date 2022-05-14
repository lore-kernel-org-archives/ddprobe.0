Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B70368
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652519219;
	h=To:Subject:From:Message-Id:Date;
	bh=0ghk+Z2ijodrQcocNL0UfXoKMOjbPaxCdudw0K5AXos=;
	b=L2x1gorGptTku8LX65/74mLrrg23uIv28DC3aqqXcjNp0lQTDA105pqoov3XtFv9
	lqBxyHCrb2pT73GBvdUDNzX3Ze9AqtsVFLjmkx79fL9SPSW+qybMWKW3BI0r19QMrcx
	M1uVxoc2hgh1/DnZxVI1mbJsWvgPSqDRIgUZMwcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652519219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ghk+Z2ijodrQcocNL0UfXoKMOjbPaxCdudw0K5AXos=;
	b=SoKgw4wHlWSAYHzDNpZFXEa7QgG2gR0dmoQex/ZT8BkvZYc+YsvW2DePSLUMtt+u
	Yb3gsJyYZT9LmOXzrONk0fbV/H/x3evZAxxL7u/PaW9Js8N/pDAy3tu9Mz4xvGdNguE
	rtwpuxf8lssUdiV/TOq7ABuozvJcWJaYDIM3t8aw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1d23029-d734596c-7784-4a86-b026-fff394917aa5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e894f296065198a050d8afb594c564d0589dcdfb3170760c793bd29fc5ac76cb
Date: Sat, 14 May 2022 09:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652519219
