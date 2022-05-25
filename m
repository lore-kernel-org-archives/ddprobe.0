Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D4CEA0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 07:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653465419;
	h=To:Subject:From:Message-Id:Date;
	bh=EMmFLv+4wpEJ7jTKcUDm0bF0CxWWT5t7qr63pmrgJJM=;
	b=WkDRs/L0rnfZXT0IxF5JEdSAsrGrsv9nLet8fpsQNaRzTOeRfkKbhfrNQYEkQ6kQ
	PokVLz7FVMN2ufOnVBfYOgnpkHxBu32IgqPUGQfBmgUY3djoBXFfyICJpK06WTXyHOQ
	GGfiO8HOvsYNaX8CEuLU9FrJ4tSm0xu6/ix9b/Yg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653465419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EMmFLv+4wpEJ7jTKcUDm0bF0CxWWT5t7qr63pmrgJJM=;
	b=SHfS51sI1+nO+OLX6fDgHJXKT+V0Br5p7Ge/Ml5DpX/3StaSdFGODzweF2sy8yPW
	L5mLacB7A6T4EbrqTg+eXc0HQvLSfgAIKgZ9jsaldqXgTNLac6t3xKQmPbs0Yfd2Dqe
	J7umXMCK0d4lyQmdT8Bi6LjUUlRKfKik3RyRqVWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa380e09-10544e17-c283-4c0f-9359-a0b52f944551-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e201a260ac22c54694c11310a0969ec24073ca963017676f5220e7aa13a624e
Date: Wed, 25 May 2022 07:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653465419
