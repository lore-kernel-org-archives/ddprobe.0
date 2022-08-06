Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63AC57C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659785452;
	h=To:Subject:From:Message-Id:Date;
	bh=NB59mj+y+ypXN9HdB2fJ1kuL+Nx3bZErIFtvg3TNamU=;
	b=P7ThQD2hCSTKkr3mHuvOZrjiGQRDrKaq173Qu9zmXHQuqORhH6LXaHNus0MVj/Ix
	igAU0+eidswo7uU0NwOktokgorV5mGYSpeuIBV0ZsfDNXFMejruhKpIozwHuq0FFW3X
	Z/7IuawEcOa0XOenAzVpCTh+mfLHWhmn6FmtbVgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659785452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NB59mj+y+ypXN9HdB2fJ1kuL+Nx3bZErIFtvg3TNamU=;
	b=aM4GFYjEOjqDFlMZDXugHP1dYEcoE89EfYjoUcAL4jj8AoAxKGGrIXC1EF7hTz43
	LIO7BcCQpKLATOizX701+NVWshh6lDajdc5ZRxzFGKzJjjYrTwFHWh+ax1YM8d58Y6p
	qqwVaFd3ej2E2wkJcbJkkBkDC8PqOv4E9NhDg32U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272ec1c20-80cddbb6-7a79-4923-9672-092f09242e9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91cdff5cdf3372840faac049dc59c0d5c468207a127ac63f9558b42a5f7fdf8f
Date: Sat, 6 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659785452
