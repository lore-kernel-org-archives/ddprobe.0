Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C25D2F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647493885;
	h=To:Subject:From:Message-Id:Date;
	bh=owgMsqP4IhmGe8/nVytkg3kByaqe+2NJ8BUhXB8IsaY=;
	b=mEM7ubhgmFksgsKzwI3tzmaSB7lwIUNfObMfbJr/RjtEzcLvbd/Uat9itaUxLllc
	V94cuzVJyNhnmtRd5aaygnKA1tUihHVEGYNX1k77iwMUUEdQWlv/Cz+ghbQIQlYRjO1
	AxQZRxz8Hl2jQ5V3uL4KiKssMWfqjDxlffHuk9XA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647493885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=owgMsqP4IhmGe8/nVytkg3kByaqe+2NJ8BUhXB8IsaY=;
	b=eJ0ZHzwsbY4gdmfQg0XSL2Nnn/kYc5Ii8CtTvFBfXjHNpbpiJdE/KgVm8STIhR5n
	l484ZW7IChvmObFanGqymOTZ4Be689QVmnd7HpHmwfubjSTQ7APwNor5DhlcKlIjshR
	e0geDkXhKCETILXrr8gXM/h9OHAURuKUBb7+jA4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9649abab-49dba526-479a-4f5f-be86-79da35974306-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38990b669d95f2a80b88e76fce5ab1e560d5cebee88bcfdad3f34a8c788cad5d
Date: Thu, 17 Mar 2022 05:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647493884
