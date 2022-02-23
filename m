Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ED42F5C
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645654285;
	h=To:Subject:From:Message-Id:Date;
	bh=1CnE1k2h/lE/W1RH4B31XAKjoqXcb0pjmcZ0sF9B5uc=;
	b=lxX+D8mSym4bVOc1Bm6TGQx/8bAzrvfjC+Ul2yYFErXt5bdhekjKk6R8G49v1dWs
	TkPP2lk6xcy0xLtRxeXsfHeoL1njaG39owRJhnwkSyUmrrtFIK4hkurZgMxCYrl7eb3
	2F0nbdXBRMeiUafjgIXB3VJ9uma+0QjgGa/HuV30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645654285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1CnE1k2h/lE/W1RH4B31XAKjoqXcb0pjmcZ0sF9B5uc=;
	b=S5zJRCugpR7ApYirYMKippKsnRrMbEerDK8jMzn78g800wvnhKxrnYHj/U9Hje1X
	jJq7i3uTv6jFaz5/XNgI1oayARGr56AfYVRPabfBPSgzsD+1IEdLOSbxrcbye1vt2y2
	9yr3shZbxg2XftvVJNd7SrIEkx/KOTsdaBkbLwGE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28a39abb-20686dfe-8977-4dc2-bff3-7255dca4b4f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 773c834fe3197c9ed3b2b3bffb2e4ee4096f4d20f3e84435364e786ae8835951
Date: Wed, 23 Feb 2022 22:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645654284
