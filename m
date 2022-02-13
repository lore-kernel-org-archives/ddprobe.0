Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D980E7D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644783054;
	h=To:Subject:From:Message-Id:Date;
	bh=snr0SoLK0FU6MtF/Mw5MjZaNlWzNDorTN27ufieDAVQ=;
	b=Fk70g7AAF4N8QzhnD7LvGYW4t8rtDms8fCEk+j7Sa8ZB9wEBrW6LmCD+VKGRm1PT
	AZWsWr3Mo+nWMf2fXLEHCVukM063xRHDBeqln4v3Llb0RwMTzT/URoYXEA5kiwfrppj
	auHZR5pGzoLf3ahrsqyLC2ImK2kHux8Y0pOkU1SE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644783054;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snr0SoLK0FU6MtF/Mw5MjZaNlWzNDorTN27ufieDAVQ=;
	b=jDBzLf+NTjIVtlSQzT43ZV+rRrXNUO2yKseb75c9CXlnuBetZhHvCTgbsMPhLR4m
	gHRSrkicSGQcoK70D78RK/aE5btcyqc0prFy9QfG2K7wWdje7MaAALFBy6JydAnZ55f
	UL1+bZkxYT93rnxpWu51p9ou15aDl6gSJDJ/8pu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4b5acd3-047c3893-3aad-4eaa-9894-f81f55f4fd8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ef76c271604329c7c81712a04303e74b9eaaa93e56753c69da6e3d842a9f7c0
Date: Sun, 13 Feb 2022 20:10:54 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644783053
