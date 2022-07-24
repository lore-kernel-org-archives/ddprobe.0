Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D2333FE
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658690212;
	h=To:Subject:From:Message-Id:Date;
	bh=4aY4InMaOOSByYw3troirFX9xWrZB7DGquU+sFjpkbc=;
	b=VcA5eg3zBDjSLD6Q4IGRhl5n334RN/Yt60/9NZLJFqIEFB84lF/rmUoMT5eTqviD
	mHh2U+m41MZV7Mjt4+VRuvEgIacffPaeiWK5GM2xmPN470NxcQ+u1l3d/uYYYIyEO3F
	tTPOAsXAjjY9mo1SvjxPHex4kfZIxemuxy10LUQo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658690212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aY4InMaOOSByYw3troirFX9xWrZB7DGquU+sFjpkbc=;
	b=bvDEi8J2w2bX0akZI3OFQMjCAUBhm7D1uVjgBhtVFIpsAj372pN+fb7BhscPMNgi
	d2939GdjeKs/H59yRbbc5/187GsqApd5zRnTRZ7lmXeCqApKdyg2uoDhQffTO7lxxi4
	+LBdfAwyXkd1qDhC67lDkzHA5RCO5gLfwtPIoiXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018231a41193-fa81a90e-265c-4f34-9359-6c1988b74799-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5859637544b72b36915520c82048e74e90e42ea51e15851b4ffbf322d4241e41
Date: Sun, 24 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658690212
