Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 827AB7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646961085;
	h=To:Subject:From:Message-Id:Date;
	bh=OEXhcdfPJhu5uWFHSRo/rlMSWlUu9BhCTN4kLyIpe/A=;
	b=Hn7GZdFjce3hpV1ub7OFBBQfAIck2e4YbGTvBCflR7cxvEJNq9sQSkJzD7/Ig0BO
	niHJE1wA2p4GZzN0UxvLhW8A4B+VCBUtioAzhw1BHXcC33VvHjI75AP1ygrylrnla/L
	aMoizSiwwR4YbdOQRF5TsnK0nZDqNrihpWo+0ggs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646961085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OEXhcdfPJhu5uWFHSRo/rlMSWlUu9BhCTN4kLyIpe/A=;
	b=abU08t447qZ4vljH3FEJ/1F3AaM9XnxHzj43TQJoXURpi2zIG91LhWGF7WYbHmkZ
	5CAuVNuP1ZGiOHIhssdM7RHTuC2j550q9QBu+SZ4YTiWLaJQFL98J33koQRUG1SyxIu
	qzf/8nY+Y+YLj+79QS/uzyuXp6Bgi4zlUxTG+xQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7687c953-4c0b0d47-13af-42c3-bc85-9680b05947de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9d0934a4b9ab5ae86179f573001b7cc656539f4148600eb6b846feeb34fd0c0
Date: Fri, 11 Mar 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646961084
