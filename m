Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7710809
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657279612;
	h=To:Subject:From:Message-Id:Date;
	bh=0dbKGKduYEXJ/0CyScal76wHkXorPzuver+9NH6PxOs=;
	b=VgdoWNALWThG97UhphFXnQzuE5BKtWjBdxC3reLjI0P14PiAmjjmVL+ma4aoCGWs
	93q+OF5SOL4Yf6YbW7lwXeN8+Yr4ByumJ56ZT+XFt2z/xpNTZRkuYTUrJczSY4B5Me0
	VJdGxDUVJlVNpxTU415C/c51l6f38Ye4697gGo+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657279612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dbKGKduYEXJ/0CyScal76wHkXorPzuver+9NH6PxOs=;
	b=NzjJo6dJsFj9LRR2w9TBG9HCZDgDnavMJvTSuFSvqFW2FBcWA75Yu5/Wpu9zEbxV
	Xxwws/ObDM+/PUVNToe6O4sZgEFvjJjvJ13sbUQsJY3iuKFnh5pt5f3vJavbUTYUER6
	70r9wZpuka0uXTz+IdeyzOWULER5+mx2GombGdaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd90058c-99f4c5c4-9a5e-4186-ae58-07f0daee3c01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70a6892e99ab8caedd48418b65cb8452cd3ff37a4737a112e0097c2dac089571
Date: Fri, 8 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657279612
