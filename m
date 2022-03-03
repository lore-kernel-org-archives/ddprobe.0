Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FABB2F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646328385;
	h=To:Subject:From:Message-Id:Date;
	bh=Ulskkjy3UM4Vzr4AT7sgFWhgwbRI+niJoApX1drbBHU=;
	b=UE/sTuXiJosPLS1YiNglHqJ8TSa1wfpcM/9Ja4NL4/7qzb6PLJNq/oqVPlq1AdoQ
	J4UoDKWWiwC5q0sHchewUBu1HxQ9TqwHG0WzXDQFUJbCeFRsBDedqk9Q/SxzyEAXhDm
	0cXriGwlvjP0/2wWMENe1XbWwy0XUGgmtVmfyk74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646328385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ulskkjy3UM4Vzr4AT7sgFWhgwbRI+niJoApX1drbBHU=;
	b=QNd4u2woOryodOwYP4ow7TjhnrLUUFR0XLzwjE/iQdf4c8SH/8ZjLXesrJ7f8136
	Z9WyhFRHGYmCnU0kLRdJJTnpqYS/l0bwuVHTGfEyvC/2LWVEnbGY3sLvNlVpNp29GJB
	zsOROpGCxYBwgAvCEBrfi6PVMZa22XNp0tSFEk0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50d18d52-096a8c7d-984a-4f8a-b24f-4d72eadaaaa5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07541521ab8e06c10794d718f91a01649995addf910c77659bd526b2d2ed1bcb
Date: Thu, 3 Mar 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646328384
