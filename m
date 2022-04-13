Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F294C23BD
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 03:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649820478;
	h=To:Subject:From:Message-Id:Date;
	bh=9RqQ9AqWS8I/CTcHNDXQmbY+AqpQVuJpYRT1tBarhIw=;
	b=Tw3EmtLHh596uWrp9gD3RHqpPMZkQvnKI9RYFv5jAQLOh14igd81YdvmamsZyAq4
	Opv3Y/wMBLxaRsz10lEN4ScFg0XUYnL4D3c5KktZRpMEymFACRpFFxh4SqXDrfhpWc8
	xAn5qENOzlStXzTIHa6pvsHUubnCsVfhoEx0PQKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649820478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9RqQ9AqWS8I/CTcHNDXQmbY+AqpQVuJpYRT1tBarhIw=;
	b=LCEBvQ87uGWsLxN/9j+k/4eTqh3ImKk+L1lpKDRbyJUpzKiV2WcR6iQbNmL54fAQ
	C2JJ3Pr0qk2Qn9Xj+7Lft81PGNqBXIPFjTqMwARvz50fm4CwwPBRj8ydfUltEmzWubb
	poLRy75GhsEEXOPrX6YJRti4e9u0MViGJ2PEmljo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018020f6ab4e-6266db7b-1334-4d38-abc2-517d68eec6ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 838537cb6d6f51a49fd69f5cdcc6407076288e8010aa4204aa9d13ec8e8f9690
Date: Wed, 13 Apr 2022 03:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649820478
