Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6DE41373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645740085;
	h=To:Subject:From:Message-Id:Date;
	bh=Dxwusi57Ga/7e/5w9DhVDFI2Nj0RrYK7qtmZWXxW+JU=;
	b=BxN1tNYb8S5OgL9wM60HMVDgGFPEc7leLLwU2ML5ccZZjYcVvihIJvz6zo1AtrX+
	R3dqiZsIbS2BX3wpGd4ZB4l/aWl3shpZIfT2KG0TlI6h9+Fx1CSTzTQlSbt3Vv96cOV
	6QOpn5bUxrSdDm8xvYCMm93oI35iP+qL2+osvbPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645740085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dxwusi57Ga/7e/5w9DhVDFI2Nj0RrYK7qtmZWXxW+JU=;
	b=XLZjZzwxdD5bx+BDs089OJvuZQkOCAZKaRtBP3gwrHwzHT+Iem/nrS6Ku3zACkP6
	NVbQmoDy51Hi3K7GwXIz2MWIvdF1I6W1NPDqKwhoGCWDydvozPrQ6tjoDk7t04gkO8M
	sGLxwOxwr8qMoaAvQZQLNwgkXxQQhGSvOLViirF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dc0cde3-892cc375-5ace-450b-9481-40108b84247c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98f2b5f795997a62e85a54446f550249e31bafac0f9b097db82448f2a10a4274
Date: Thu, 24 Feb 2022 22:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645740084
