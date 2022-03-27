Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FED2FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 20:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648414798;
	h=To:Subject:From:Message-Id:Date;
	bh=XjQB0LeljVjxsM3ONWF6Gt5MrVc8pQEi30Kbh2WfdL0=;
	b=IZPBTdqy1LX177q4eILI5I+CzOQIO6wGg3kUuaO8F+3m/kobydb7HbzC1Yl9hq3/
	BRer9qdSzVHe0r4P9ovlK3ToB/37vxl85pQGSVQbAi5oQoWCbVfpuuJfFDEefPtuNis
	s0t8PBkyOefw2EkAC0/CcUfplz4/7akud4E6E3LU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648414798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XjQB0LeljVjxsM3ONWF6Gt5MrVc8pQEi30Kbh2WfdL0=;
	b=brGQo5XgcoAgXSG3RpYc7Rn3+cYtSou8IFBkOrekPq386FF91pz4NcOAqFOJVx94
	D1JObHJ3gCSp5oLZiImgQaO+/EbF7Op6wYj7cU605DSPw5cZGfMTw0gWjiASkesUagG
	JxY37XStXQBL++l/InSiFNuA8VUDvXY/rag09cJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd2db195-b9f39736-59e7-4b27-8cde-8b7648f5dbf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a9c33037b4c84c8897221f864767753cbefa586d847e9427af73ff04f5bca71
Date: Sun, 27 Mar 2022 20:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648414798
