Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B64B4A04
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 18:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657909012;
	h=To:Subject:From:Message-Id:Date;
	bh=TWv4UpodqAeo1emV52qyb7MhgvRKmR8OCsnnln2fIjI=;
	b=YcNLUPvhdkJlXVrurbBOAS2N2HCOe56Ae8Jd8Jr3xwh/ax3LCvPGDhi6pGKCcvQ3
	F4eZE16Q2eH7fAcLqZow8w/2SXogTTt1KFq6vxUk0RcgaQ1utiU9/7eIDPKQ/aVwPrJ
	FioPSY8KcsrBUsq6IfP8S1hAWM1Q90wufuzOxvmU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657909012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TWv4UpodqAeo1emV52qyb7MhgvRKmR8OCsnnln2fIjI=;
	b=Bqy1qjHSZAxFy58SdCqJc1XjKigQIACRDTQMLGonjmuqk1PfsdTNHwFq3zfX4dDA
	1lAxIKj+xEI/VMLE5zuMuB4ZLG2QzP/u5q/xfx52iYk//QTA4aW0An9ws+23jJ+T6r7
	XNuA1fgPyhOAYxOXF+DqIAf8tkja+bbGeVhZbYdQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820313e764-cfd7911a-1510-4a7a-b5a1-40f1fdb7f3ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f21c4697e649933b7c0a853e2441ec854f31900472b9c07c11b9131dfbe4402c
Date: Fri, 15 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657909012
