Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CF37C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 14:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650722638;
	h=To:Subject:From:Message-Id:Date;
	bh=im5xoV+wZHknrg2g6pVXzgzSIjEk2So8+Cd2+lXhzGU=;
	b=mx8CmBph148UtJfIpfQ0yRx88RlOM5h0QcJ3Eedr0I4y0xPwC8eVZspHZaAzMvsj
	tUGd8WPGAGrRTkBf4XgsbJmirvGF6kBPykC+S85ewoeuL753Fj4jZwOMJNFcXIXe2Fo
	Tv5O2eiEUujUKeRJbVRMVD5XdcejBUbtk1lTl1dw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650722638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=im5xoV+wZHknrg2g6pVXzgzSIjEk2So8+Cd2+lXhzGU=;
	b=PV5KACZNqpE/p/22pzHH8NbY4lGAfix5kZA2zOv7Z1u3DtvJrOt9FtO11t6PkXLv
	KfSep2T+KP7M8MkfYc0p2RlyZlCbV6/cKDricUQyA5zqm//oRx+jlCm1z7DGZJuRv3J
	1wu7WOx3BScDqCSQuMmYRSUIuw+tAe1CJNmsGOtI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056bc89f6-c63890fe-85f2-4d79-8a10-ddbf3d9fce43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7caed4400549f61bc47ae7b69104262505c402d67895a0178dcc4588d1205a52
Date: Sat, 23 Apr 2022 14:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650722638
