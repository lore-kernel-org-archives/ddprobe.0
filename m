Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231E37C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 22:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650751918;
	h=To:Subject:From:Message-Id:Date;
	bh=Gkn7/dk99hpzg/oxnW3GoPjPMXSn5Aws+YtnnH8paUg=;
	b=Qa5IZtZmTDrCP2S86VkegCA4mFS+y3F2TRgQUVVI/1Sn9i+P7Q/Zifg3fYr59UAu
	+wLXofkMwgaAhFmkX4a42jzoXcbw0kVx1ws7EIytaSjyXaGSKzXXVLu0lA+gLGaHFvC
	xh7D7ojHxjIyFoWRs7fYNPaJcG+ZInE2/SAjmtIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650751918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gkn7/dk99hpzg/oxnW3GoPjPMXSn5Aws+YtnnH8paUg=;
	b=P8eGLWhnO99cAycdz5NcbfH3W/6a9GVEk/GE6IxIKD6TIpkNSkF/4lmSISvHkeoW
	+W/XtKZticCIJRpM50kAqQFwtSLfBr3XBHCpSok/xEUImmUlONnKifqauu6l6PEOnTL
	E3G7XEPO2/HJIV3eIwZHKsh0UYJGNNenqW075G60=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180587b50d9-e7feb770-a548-4356-afd7-4e8e4a3f0e4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7037299bb6f1572060c321b0fb0de9b244bd6bc874ac32987ab8fca39a7c65a
Date: Sat, 23 Apr 2022 22:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650751918
