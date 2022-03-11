Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E801E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646968285;
	h=To:Subject:From:Message-Id:Date;
	bh=0bk1JUmgCsoEwEQ7ldtxx0x9z0pplBhym2YZxfh+yvA=;
	b=H6oNkUIqXfjd3S2lvqdGbTwHHft+1dbmvJkUHSsx7f25Rpazlg/ii+Kj93Z7VabK
	Yc3Foc3+0twP5zxOCKfxV6Pk6kEriTe5T09oQiMaJFuHUX/sUh1GzRazycX3ojQR/zc
	4gjZgKPXeTCPLhXTF+eUHNoO3oMN5dp5cy6JvE2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646968285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0bk1JUmgCsoEwEQ7ldtxx0x9z0pplBhym2YZxfh+yvA=;
	b=cO1EPMpDC5D3RGKaUD1CTsIuxK5pe8lQjsAC0tSGzG+BF/gfDIqMZk7TkPcgQEGW
	VsAgiEyHt7jwynxw9NBtJi26b823JI1xqzoQjqUq3gHVE4x71S0XmYNPEdH+dHCP6Pq
	8L/vb914622CvGV6QOBoJO7A+7SmrZhQEgnw6opA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76f5a657-6014beff-41c1-4638-b441-a20c721101da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97663387c60d1d3176502005bd9616165bd4fb246496e18b7d0fd11dd31a8ea0
Date: Fri, 11 Mar 2022 03:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646968284
