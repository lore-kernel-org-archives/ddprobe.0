Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4EE1844
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644970285;
	h=To:Subject:From:Message-Id:Date;
	bh=GIdclb2CqcVlgOTAjBH+HEF/sWxOC61uNPwhwRUIulw=;
	b=HStOuoGd1eTNU2OrwE758ESJgfPOEJqlRq/u7DY8iA49A24WOLWoAglJATkvp5cf
	ABKRCYgtBWNpKMtvlOeJCZp43AIcWW1EDVrpdy/JsPFy9af1hRb6g7z08XUYVYymf1W
	DVmC7cm/nNtvCYcYkf040LtDEMLmlqtBX7IjOz2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644970285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GIdclb2CqcVlgOTAjBH+HEF/sWxOC61uNPwhwRUIulw=;
	b=CD49PDJZB27bmsH+DQoQMQ1tMAUJ8ZWCNr1blk0IMsdv7f1GVTugWTXkfuC5N8bq
	kfw2ns6BIvt0VjKKvzjpmJmYMrD3eoSdTdAHA9Tr3EXcWcwUtGccaz28fm2pMKGTN2Y
	R1OMnfwy0fuM9McGsSN3rlY/Pc1uMDWTIU8/Bh9A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017effde978b-ab773e79-d615-4680-8015-cf321eb97313-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94b340035eecbdf5b69195d687ba56e20dfed93d3309c6c83054ff3a2f52bd67
Date: Wed, 16 Feb 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644970284
