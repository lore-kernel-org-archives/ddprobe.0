Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695C436A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661043652;
	h=To:Subject:From:Message-Id:Date;
	bh=+6Be3GqXfg1P0+QvEvZBy/e5oLBekxVw0I/V/YVm7cQ=;
	b=LzoBQa1/UIn/mZGquKPp782FKG10BAjDPAAfW6ZD3LmjqEGFm2jVpwrt65r0H1ep
	m5P5irNnrWEeK/pIK4cssD2E0aIRqe/teKXXtbSeQw4wOVeTSyAop6hC71zHZuxAjJE
	zhca/ap1R/K0mT1NAfy24JDnXckhRZBIDuBsrio0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661043652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+6Be3GqXfg1P0+QvEvZBy/e5oLBekxVw0I/V/YVm7cQ=;
	b=cEjlViuKIwvg1oLAtlPBb/Gz+vUBcvl7jc7ZIEs14JNgQm3STRQqk8QRBu9q4MsI
	ZoRMQs+pXaFRPmt3B2xAJVsERJTArC+PsyOCYLKTMv2vaZtuntV+XXvwi6GkDb+5ggv
	zvEUk4x8q9SY4Z0lJt+dhBml/MrV13l8sd0niggM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdeab7b1-53407e62-ac08-4492-b827-e32d8350c498-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93eb36f3cc6b4548734d22d29c82f7bd29e76b8ee3c0d423d752d35c6f1396d6
Date: Sun, 21 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661043652
