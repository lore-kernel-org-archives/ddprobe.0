Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C9C2119
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 11:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653996299;
	h=To:Subject:From:Message-Id:Date;
	bh=obnTZY+hkdaWt4ICYq4cO2GJe7fahstq8mBoS7lAEIw=;
	b=AzCm75bQYZUMF/7Fy6PGpORNcSTfoCQ9Y8+pkMNDR7zcoYaDJxTI7oVhtKg4L5BY
	mJbOSJNRMRHlXVqqRKgn8e3xYvgy2ks1c49d3vwPeXndXEM7QYliL92yCkbZUmr3HRo
	UNoxDLVW5GqzCkELY3PAkWiZX+7ps7nKStHcpaRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653996299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=obnTZY+hkdaWt4ICYq4cO2GJe7fahstq8mBoS7lAEIw=;
	b=DXe/es5ewK7Nwti4tGUuEcY+KaHv7cp26CY+Y3GbR7UbgihxmbPD/X+Gzb2oL9Ah
	Q2x2THHjZjsBgmtXbsWDtI0U3DMGxO6xaHtieRVy+0hiKmwVpBXTk4Eis8KbIjTNztl
	ImKH5O0I2Xgze+F19QEu7rt4fs8QwtJrHwshZl8o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018119dca407-c8e5e6e5-51cc-4db0-9595-fa6e64d0fa08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79e60585cb0f6942cc324913a7acbcffc72b68773e7f66964ef15cecb232152a
Date: Tue, 31 May 2022 11:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653996299
