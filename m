Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7887184D
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645767385;
	h=To:Subject:From:Message-Id:Date;
	bh=7RHk+SzRnYid8GX5qasb+AXz6GMP9xiGFIHqgGWXubE=;
	b=jz+uZGlyeLPK+fvoDJ1owAMGrFYFEMGWTONEykh/Pr1tskQjH7sitzae4A6yeeWE
	x8aF/avyRQb1H3jJwfsQ8jsDZnULuwWXPnoMtp44FvWxBd4FkNTOBo5ycnXMQRcjtuX
	XSWqnYHvSwNdnZMPJi2YoqkeaoeK9ncbTKuSbbvI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645767385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7RHk+SzRnYid8GX5qasb+AXz6GMP9xiGFIHqgGWXubE=;
	b=Z3dgWzjWmOgMwEEyOMDsH8ggfn43Hvw54aK9dn5I3ynhQSHNa/LJEnJjzgKq4qTz
	we1MLoG7zTmeSJAVi3kEbZHXfkxJyCJAB1LmACLJUHnYtZ5OvHR17Wl3vZ8WKNG7hMo
	fKeM4oeVkIgdXlJAGC5LxzpaiPRXanQ1MowN7x4E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f615ecf-fd516fab-d5c3-4849-b626-7a4d4d138208-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 393fef505ff68db242d320b7ccd1cd3d74f6bdc6762416828d3b812cd31f1a94
Date: Fri, 25 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645767384
