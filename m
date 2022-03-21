Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EC06126
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647885984;
	h=To:Subject:From:Message-Id:Date;
	bh=dQP6Rahz9m8LL9NcfU045rNXKisjc6LrQ3o4DnO9pI4=;
	b=O6QYaZTGyNnHIcm00j9ZlmN4wozCxmWdYRJiQE97H0gjGkEvk+AbyxrMW5WPf7t0
	nJQfmA114lgJxqSlp/kyjAyFKxwP9ycoSe4abmthF10vxWKTYrscbuJa1O2cNas/PAB
	apZiAeSfM5yn/oj9b+G1RClE9sVGIVdAAsAy+YKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647885984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQP6Rahz9m8LL9NcfU045rNXKisjc6LrQ3o4DnO9pI4=;
	b=ArxiPqaWHUBuJzfyp8weqoLf3b+xJLgvKPAaEzAYNLTAYy2A0D7imtKKRWZbIibq
	+7+hbRPzbq9aZZ6QCPxe2vSihPNrokcpqj49VcZCugVpD04Xzw3lU/f8IU5QtyLr+PL
	foFjWkJI+5M3dXFxXflsIsvZsMpb9cyBuNwL4t50=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fada8a3f8-c0933982-8ce0-4ca8-baf5-fd974d8893cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c75e9cae167d31e16a5412c69fb42b23e49d7fc8b7b998d12deb7678ef804985
Date: Mon, 21 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647885984
