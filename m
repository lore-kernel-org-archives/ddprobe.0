Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C7E7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646370384;
	h=To:Subject:From:Message-Id:Date;
	bh=jqrcrQxcAkO1qWlzMGgJP/z/sVH1JOLDvcuu2sgH3fo=;
	b=jdGFMJEXMHjNtZRoxg+R5CDjxVerMyXJBtPsExiPHXv/9yEIyR9iFkL4j3JchQIU
	WSQOvG3SWsdNu/mwhxR6xW0gYuFjydAaPgk1uc9EgRFA0xuSCJkeBav89wWg9zSSNtD
	IjnDWhauVXzDHsUzfEdQc5BivdXcxxGSG/6bfX4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646370384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jqrcrQxcAkO1qWlzMGgJP/z/sVH1JOLDvcuu2sgH3fo=;
	b=DrXbImOQ+af58+fg6CxUnt1gTganQMjQG+4OdkbEgyAo52m/jamMIcZV0sNLHR8H
	fdFfIVsGp1etajTVPft//IgbpDJDrh5HijsB/pBiKd8aWKUAmp3XiYEycH4ow+26DOa
	948zHM+yh0koX85CiAL2otef6GpcbB9u1wL/yx3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f53526b96-5131e4f1-1e97-42f7-8f53-3d0e906cab4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3c3951bcf1fb353d8ed25db709764684dfb0f7c2573024ff92b112b37313a3d
Date: Fri, 4 Mar 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646370384
