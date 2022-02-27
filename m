Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44FD0323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645965084;
	h=To:Subject:From:Message-Id:Date;
	bh=GxNJLdF2/FbCop3nJ3XH/g8tY9n9pPnDzY6PGUIyxjc=;
	b=c7spfy4SOcYtv45X1bTEw/FhkIvw7/ORNyWQV3unOHrJmi8no6vIiqokhgZXnWGn
	R6zwCzCYD1L/2tTmARP9ZVKpSLgtJ1F6m2KMxlzJ3aQkd7DT7xJRKvv3pF64GNBrt+y
	e/+D0I1CYUbRkRsVT48QkIY9d1uAP69o1XgA3Cmg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645965084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GxNJLdF2/FbCop3nJ3XH/g8tY9n9pPnDzY6PGUIyxjc=;
	b=Mx0zhQ1Z8BhMOW7Mps1Lv9NFZaNnRd/pytV35sGvpcYJ2xEL/eawuZcObOkln17r
	BZw2XAvEBw20LTHY21DeaQNTrnlrY9waP/8KuVDNFtaIyr8ZOdEdq63nNUyot6D1XCT
	GWIbLSux/GwoMibtLtRyfkGlLUedwgBnPSg2DJko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b2a0872-d0a6d8fc-a404-4081-ba57-5551137d2587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04284824010a348fd1478c7cfd452e0166cc28ec5f6d07c09b7494c43f9a92be
Date: Sun, 27 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645965084
