Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E41F7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659048052;
	h=To:Subject:From:Message-Id:Date;
	bh=fciu7czx2B+VGCs/q5fXRnCzYXnp0KMqjo7SHjlYDRI=;
	b=SbXndQRLD/fRI8lwXieol+21Q9Rf2IbJsKUBgIEq6C3WpA/D6ss8BxEiDRXyFofY
	lqJhzhMa7+rbdwLGS3Do3KXHkzk9Ezz92BqETq727s/wuBkCVklqjHobhfBwkJPMYT3
	MN/vdicjQfc292O7y9884NoORs7csHOorsuMcfI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659048052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fciu7czx2B+VGCs/q5fXRnCzYXnp0KMqjo7SHjlYDRI=;
	b=cgZHPlmXLm93divcMYwRae9uTWGctQRtM5LeXBGXYTgL9KqHMoxc0vWdvALxrmi5
	EbMKkrSmF3sUaS/ZBoCGQqIGzuYUAgOm/MGyRgwMCPD+2Itp7mFWUZ0a3WAFno/92aH
	8tKX2+Dd7zyF+DMxw/F6Z8atPm/wd6hjQmVwBsec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246f84733-6ba6480c-aebb-4d06-8d02-1a7ac73a8b1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80313e69ffaafb8c1682463c90c605d3f3ca7179ab4cb84ca076f68abdedbbae
Date: Thu, 28 Jul 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659048052
