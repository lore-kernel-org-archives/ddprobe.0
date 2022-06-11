Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111B17A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 14:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654957739;
	h=To:Subject:From:Message-Id:Date;
	bh=cqFC4CWXbrXYa9MOhWoX5ckbNOWtD2HxJn6cko08mDY=;
	b=h/I/4KFRadS6nobiGY/WzvqCd/gL7wLX99X1MyVTKkT2VI1t2/AwVtGvxJ4+vtLH
	r89dYLuiT2+gfjuzMZeIQxYMJwK/WdZVqozu4ipid5G/FgzwWO/nMFIczccueKFz82f
	P1qkLgT3MOEcERmK8Y5v0OdzwSCg6AZIysnkaZlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654957739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cqFC4CWXbrXYa9MOhWoX5ckbNOWtD2HxJn6cko08mDY=;
	b=RKwPdI9Utyv765q8U0S2XslhbI0vnstdNQZs090gv/9z8KOQeOxP0idPJINicw1a
	T43UNk+0QmzQBkvblZEnfKjWZ+J0tFRwGodPnxTQSrDajERM00J7lU8jrUj89ikxzwm
	MFsYlQbQ/OHC1O55aQAMheUk6kvpesKaXTLedlSI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181532b0d1c-cba25b15-2b0a-43a6-bdfc-05d5e3cd1e00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 564c2731f783f47747b7855480f4f20ab2f1458e925970dcbffae1025f5188c9
Date: Sat, 11 Jun 2022 14:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654957739
