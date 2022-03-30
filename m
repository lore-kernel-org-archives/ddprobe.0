Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460DA36E
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 05:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648619278;
	h=To:Subject:From:Message-Id:Date;
	bh=4Hq+/OmhOfKGgW7ImFGUen7XQ2D2yF+v/PM/2O4sQBA=;
	b=QSYoele3xr1AtE9+NgF0bY6OmYosXuIBhD5fn7D8ThyvQZK4EAEZ7o7LebXeA8+a
	VkHFuRaaHiEBElEsLO80pPaNmJHyn0iR3ZeEzOorwXQ5myrz1eHMdyLWeYuKe2gzGUB
	hkGbGbsIzCdP2fFxVS3XeWuRkxw6UUHlr79t9xt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648619278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Hq+/OmhOfKGgW7ImFGUen7XQ2D2yF+v/PM/2O4sQBA=;
	b=CWSvcY72gTGLibnmLJZp9Nw3iCGJU3EJb4UWxhPRKNZBuNXf1NVSKoWbIsLbfwbL
	I6dA3ZMOIb/aBuUItRNRjBzdknJcNB0p5rHFXuHoVfc4Ds1fT82PFTEUQLo/CF/A5YB
	3YcpJSETKA3xMgzkzTHruLo1TosIZzVPcLtz+hpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd95dcfd8-0ea6857d-a778-4673-8741-57b773e974c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a789c1c2c1bef1af198cd415c098411207248d5e4d5cd3a954af0461ca3edf
Date: Wed, 30 Mar 2022 05:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648619278
