Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A2A77A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 19:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644693043;
	h=To:Subject:From:Message-Id:Date;
	bh=k497FiAvqvJ3eyZX83jTTOmWtVmyAnXNqPhUZlV1GEE=;
	b=YnRsAcrspElm767M4s7pMvLKiBiMgrqRwjjLOQwMwjHDIIf5XSv38zymNtfD7ZvU
	nwGYqGHUD6na2GA+gPXJGucEbG0PuyBcpf5ktag/KNPcbFa6uKL2jYqrZvVzxobtLyV
	8vkFYJBZkUye44BSJCzeAocB+N+TRnJXCJ7QecBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644693043;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k497FiAvqvJ3eyZX83jTTOmWtVmyAnXNqPhUZlV1GEE=;
	b=c+QwKZMalZdqYXtnCaJ6jKzaKb10Fj2EW4RuUnBnIbhyliR4j0s1RJA3ZRZg/arb
	oKwgTXes6lK7zRvPhM/qSpQdP/bXwtIqNxQGLKeEvKyFy3UXDpkEXHyU99+Kjsj9poL
	CYHGv5mve3p0Uns0cdR+uuN9AV+Y/QIjfi8vGQuU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef583906-acff19e6-f3ae-4fb0-9ccb-7f571024eb3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20a4e9fab77ffa4fcc1969e920ff5c49f763d9945058f29b5a6f516a006079e
Date: Sat, 12 Feb 2022 19:10:43 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644693043
