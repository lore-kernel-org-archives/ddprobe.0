Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7679A20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 20:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645475785;
	h=To:Subject:From:Message-Id:Date;
	bh=3FaXZ7jB2NSplrzQru1liaPYzj0Yz3tmeI4WmSGmeRA=;
	b=SxE0pu55KQClBi85rYYCVtTBjJe4WgvF6PX1Wvqk2Ukdb9e8m22G+Cxr3YFIx4X4
	Ze/bTTTCChmKYgqqmKWCmD2k8tzcMUKLWFmnIGujzbymrTLjx2bQo2neszdMDx/mBT/
	d6hgdv3XvMIsRWshmIXgSHbrPc517ExHlxdlagsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645475785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3FaXZ7jB2NSplrzQru1liaPYzj0Yz3tmeI4WmSGmeRA=;
	b=fxYq1yYqZDiGDPcIOzc61zwa0f3rY+KEh5M2ZJ4rbIGbs2hmqAhbLVblYCXZzoGf
	RHkCK7tQeeWl9eBqxGCRh36EhpBwhOiCDY+l+cDipRPnWzUok3x131r/vK7rOSD3x59
	+oWZw9CS63d+w8AiiqJtc17emehiv9vIhj6Qbqxo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1dffe859-021f23cd-1ebd-4565-804c-f46efc2720b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 597b8b6122f20fdd3ca76d95ee1f0b8a0a732d62e9c8081cb7000efb5721a945
Date: Mon, 21 Feb 2022 20:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645475784
