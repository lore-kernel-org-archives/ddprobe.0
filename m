Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9026929A1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 23:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652744280;
	h=To:Subject:From:Message-Id:Date;
	bh=CeHZiBodq+BItgS2DpYZmBpEbOOqM9TirEPu6J6hmYY=;
	b=EDW8XdizsdOr7TdXsgUqoNY4RFqWDbxoHYWPcPz6l2fdkhMYu2hB97yGJTo17lkM
	jmjx5ssM0AaKFQFlM8VoGzPtRTGwfWdbyNnsWApzL5nZVo5ba52s1Y4T7zHWRArQCxJ
	/fJjOdFk85uaLnbzwgcPRDzSG9l4mI4Ffw4Rsi8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652744280;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CeHZiBodq+BItgS2DpYZmBpEbOOqM9TirEPu6J6hmYY=;
	b=VibFOcaqURZxRNU8raxKbym1FGx4kXnEIXCbZZmvNC5A/Fyoz4wZH+bwPdElymwy
	0gWDX1Eq43OWRcgx2Sj8OT73olSzxxovELHP9yvkl/XcexP1n3BcqRByuYlaXDQIiQJ
	AkEv3iPNLj3balLn4CafFcV8XuEmkouxK4xKCjJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cf3c54fb-1c4f4898-9663-4fbf-9e77-b2a843ee43dd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0323901d2eca126c896a4ebe17b9dda7601aa34355b13298827f1fa51cf0f7d1
Date: Mon, 16 May 2022 23:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652744279
