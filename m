Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1C54289
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647872784;
	h=To:Subject:From:Message-Id:Date;
	bh=4quI3E5ZmMKcMb82e+TgyaQaLs9WOVdJbDAb1/VVyy8=;
	b=GOXaVXl/4TEvb/ZeIO9HUsgkBeeSpDmAh4WVpb8T2yMWmEzjQH64a3w3px80ZVfF
	uXF2BKuwTPSIw03BYHcjnMLsNzMx7SJ6jkqiQB4XN5+RPwI5iHEfU4gJ/E35oaEvzr4
	golzjyZ6RBVu5LNd7Ltq7YkCYHI7DnQrOjZP0FDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647872784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4quI3E5ZmMKcMb82e+TgyaQaLs9WOVdJbDAb1/VVyy8=;
	b=M+wNnwJLwLB1IfqxU4kaUDgdrq/auMfUH3bvMpcUroo8rwLpcaISLnjoDOiQK17M
	j/zztF5ixYpTm5gmLAZdNGRmgaqKDcQlPNf6deDRwkSmBvit96/RrjEAFjAqhW3jq3g
	5nk9qvhLjYsQ83rKpJ+IAz0XIkHvpwGZn+RXXT/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017facdf3962-1ad60c6a-0d81-45e0-9efa-b4a624b14004-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0acdd9e23b24f871430245ecd4bc7b34baa72e4a0d73bc89163a80979d8f031
Date: Mon, 21 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647872784
