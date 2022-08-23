Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B0AA3D
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661232653;
	h=To:Subject:From:Message-Id:Date;
	bh=cpZWCX6DuNqNzMEfx39Xy7JgLl4C0SSe2omwM5x3/3k=;
	b=MFKcNov6ZRBScdaXgKOXUwDkE8JUamiPcYRv9MoJ07JjmM+KPh8VfFIAMlkIZXKE
	/Aa01EHi7tA1hZto2T+n1x1TGGvcyUbwNV48rCdDWlZhGd/Z0OpOfSexbtFuDyZIm91
	Kw7hPONT3LWxgIN+ThgsmcWyu+QmdQEKyn6aQT/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661232653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpZWCX6DuNqNzMEfx39Xy7JgLl4C0SSe2omwM5x3/3k=;
	b=jAzpQ2cKUcJ/lwwFeoPu1Vb5XHZPqzIyeb8nuOfrMReUPfj8TXA6tAu/oFNtBC3J
	k9e7rJIB0s+9+Z8IbaxR3ttP7SYZBZpWrhINs8h7ltJfbS/F+4qI/6qZd88xjcFDayB
	gN/q0WdMgdfeVR0ud7XDTbTvPebLdzHjaGDBnpTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c92ea152-8ed675f9-30ee-4b0a-b352-269bb9dfcd15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: faee22fbda07c064f854810162480b6718868cf52b8ba33ce7820f73be9510a7
Date: Tue, 23 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661232652
