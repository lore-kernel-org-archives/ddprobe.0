Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59679623
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659658252;
	h=To:Subject:From:Message-Id:Date;
	bh=qOstFhYIS2jWi4FTRTLaKIyUXzMfMQxOuKsXdr1VLSk=;
	b=bdtKIX03i2AOuv0KaLdJblhAZArVmq7QVkBIvPyZmUMryTxMugRnw3zzMVj1YvGi
	qo10KYS9qfquBs/P43wUn/QRdSdXQOat7rQzuu/CDlvU8fnzLXxzRH8IzzV54JgyX4I
	jRG4IS6YV2nbQ0kPsjoNAMi49B1uQyCHMSdT1OOg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659658252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qOstFhYIS2jWi4FTRTLaKIyUXzMfMQxOuKsXdr1VLSk=;
	b=PKJlG9TnkDa4vtWbgTKOgGarvGTUpBMWNvBkEXpd6XLQtmtzsTaKSlerZk+hcKVh
	vI/4s15M6pA/tb3OTDqSHIPDxGDldxSWm0bqkAylUdwrgjWrHJPI4mp5oy0qSwz/+Q8
	EpSp4ihsCgKgpuc9Jaae++AAkIV9aGsj3rJ86aaQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b573114-57fb78b1-4da2-476e-b2f0-068e075b6826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35dbcae7e0dc42cf2fbe81dda6023e114a7535575a2034894842c102471d2fef
Date: Fri, 5 Aug 2022 00:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659658252
