Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1572596
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 16:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651682398;
	h=To:Subject:From:Message-Id:Date;
	bh=G/yfclJcog7sHafrhRMO/3gFhZCAmrirLWEvdl5Jko0=;
	b=LUW9tJ1dk6RsA327/mDM+qebvYsJ6VBuok1Mi8MsDHXWC5M8vVaWGIlU67r9xhqV
	g9TcLWbhki1uNcZEat/M3AO65TRn81amtv1tyTTBmbnkP7Lma/VWYjPtS4DP0bZ/eh4
	tLGDO5bVkI5eOwCKyu07FHHu73Cao0uy/Z3SHtnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651682398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G/yfclJcog7sHafrhRMO/3gFhZCAmrirLWEvdl5Jko0=;
	b=RwyMxGsveZoPcU81IwRgnYwiCRw2p7vTKXHLcUwbYZbCNGdyKnnIqOe43lDFp6El
	zckswjGPeR4xq1IG0X+jW9dbC1bAFSslCVSScn0TcduUMFoD2KpKQ9fejjBUCmBxG+M
	rG8lwydSD0eV5Y4i2F+rqw8ecY2oz0giZjRhySS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808ff15063-a70a7d97-a486-485b-8157-782ed0c68de0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27e9b7b7183d9ee7e2baa041dcc258aa647b29dbbe5b4b92209feee98cebd58d
Date: Wed, 4 May 2022 16:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651682398
