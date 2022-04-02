Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6157D10E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 00:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648859459;
	h=To:Subject:From:Message-Id:Date;
	bh=TqKrb4lxKB6MOmq6R10xHmoykOFKHK3urkcSllUKgyc=;
	b=TypuyPOqwRcMHxJCjPFezg54r8bkEVmqh0QIOyFI/jpJA1criEI5zM4zEjdVLbHT
	g6CQVQZOn+nBMoz+PBdAxid098gcF3Gl7nUv/vaAARd1DBXQihzgz/ctIYw9+yDR5N6
	f4iwrB/0t65rizwd1F4mikOsBlXyW/5WfakBpa6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648859459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TqKrb4lxKB6MOmq6R10xHmoykOFKHK3urkcSllUKgyc=;
	b=SXkLsPbE1cSUnJ4I1oySTexLLdeG9oeNdWVU4A69CGYqtyQmTwouIWX7NqB9d14P
	UvASC8SG/3vuCV4gVo+w96ae2siQ2cmdMGq3ZoofslUCN19aXUM9Lvxvpi77BIZJzvN
	AiyexOvU5XNcO9ATUbrPC54RmIb474Y1jvXTLsM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe7aeaad1-74de951e-2fe5-4657-9699-2f659002c377-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 947ccb0b2f36b046c1c4a44c8460ef6b71febea65f6b4974f0f1fc2b0e23f16e
Date: Sat, 2 Apr 2022 00:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648859458
