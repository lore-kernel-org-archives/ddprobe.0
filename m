Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1136E17E6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 07:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650009238;
	h=To:Subject:From:Message-Id:Date;
	bh=RRmd/cF6IhVnJKGN8B9Jz89SpLwsuF6vWaGfU4wZSLE=;
	b=gH0cOnqD03kKo0fQtQmrZINdpngsIZr+vU0AvzLWhUEjHuNJsvZz9ktqx1sIHyQe
	odZN4QsxbaqR8DQer/G1lEixKb8sZuInDlPaYjBiczN4izB6aCecRhbowjKxu0Lpoib
	lNtT8H2BhWxe+BZHFSsD4BCj2ahDNpsvRfSDQdq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650009238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RRmd/cF6IhVnJKGN8B9Jz89SpLwsuF6vWaGfU4wZSLE=;
	b=CWGBv5EO/jR8DsYO5V2243RF1/49T8JjEbkgG8tGUhP5FH7+V9uZnSYFn8/ZR2yj
	yUHpfF4p8hiKKCGxP0j+wi99g3BOwsagv74uxl6s7RuWV/0z8cEBwXexMhQGelNBQUc
	+vZf/2dWqAcMhuPUHKRy8eGwbFh7Uk8SexqOR3aM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c36eb54-194550c2-8dbd-4093-ade2-afbea3a44384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3c2a3829598880581a3d61e5dc169c933c9e1d9815552f90d543d580725ac45
Date: Fri, 15 Apr 2022 07:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650009238
