Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64AF03FC7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 13:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657631212;
	h=To:Subject:From:Message-Id:Date;
	bh=C/KJ5s7GYdbIzRyr+GnXl/q27qoOYdcb4aTqPoIrsIY=;
	b=L6c3IP5drkUNXjMRpxq7ux3cwcFoHIV0o9yrTyQ01IzqvWIs/mMjzq0giJ0lee6D
	12KYkVikwv00l0Eb3HdU5UN3AdRLZN/IiU1PgcdwDxB7tYGVikkluWGNMLD39GTSnsd
	7K6rHGQXMQ/s8GgDl0w20MUc3/ocxTyRu7TYVlgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657631212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/KJ5s7GYdbIzRyr+GnXl/q27qoOYdcb4aTqPoIrsIY=;
	b=Klus1HINM3E5NsQBXZeguS9MTKyjVmp6JUYfLpfeH/v2t5QxXC51rwi8+fDhmfux
	aQNiq/nLXQJIcx+PQEUTqv3ICBCybfhSjiAb3GdHWA35Oc9N1ZH5CRT+liUFMrjazzP
	PFtff2gJ3dJsZZo4q/+YaF/Yh3NMx3fEhWwmdrMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f2850342-3a8361a8-7b8a-4dea-80ad-7c12e5b0a5e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eec28c1b82fcf2628fa0db19058cbeb55b45044a378bae75255604f323cd039
Date: Tue, 12 Jul 2022 13:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657631212
