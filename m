Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D293FF5
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646023284;
	h=To:Subject:From:Message-Id:Date;
	bh=jepHGNj/JiLaK8bLsH/LBPBQw7VmGq3K7w6XsuR/Am8=;
	b=TznLiEtV+UsxVG4YSQTs6Da6pQH2MJJZCuKwjgpAWaWnf0Iy9c3F2A1Htpsz8wRl
	YTXlYqVJOiFq9GwfIKGoM3gvRBXWSn1+0ugNNWx7CH9wuGzErSnmOF5jj33sJ9qAfQ8
	8GRCL/HmrDY1mU8EYe6Y9SnKtzyeyjiEGp5HhfXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646023284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jepHGNj/JiLaK8bLsH/LBPBQw7VmGq3K7w6XsuR/Am8=;
	b=C7Zlbf/+CurFK03N+TxAXcpeuDarhsLrfJilHtFv97xxyzO4Iuh+GhFKCL8i1UZq
	2QZDgHt9QA/Nm/Lu5zebFj0qlfSXaXx+mhGadS/WiWO9Jp6BLYl/C37CqRwJs8bRdm5
	DiKtdq2RZ5hhL5RO6LPu641KBiioc0A6AxX/keVk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3ea21810-50abff99-02e4-4a1b-aa25-704e6e55a57f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d6839eef7294d29abd70e614f39e96fa37847109563eb3ff4465ec9a3549ae
Date: Mon, 28 Feb 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646023284
