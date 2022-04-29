Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6233B7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 07:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651217158;
	h=To:Subject:From:Message-Id:Date;
	bh=o8TJmDib2yvHl9ML6fDMoIG4oQtwidDdgpIA+LxUWFE=;
	b=ZONF/asioLxVvRHZu61HuPniXF28fZGPyLKDYaR5nX/r5sXlnTkvGCZQ4hZWxggN
	VVtz/Ai0B+zRnGSAe68XYuCs6izBsbBQJz3QbD13zmzeDYJ4YReO+dQMnp2q0g2mKDR
	3WBwUCiXCjW5smoWJe63zAc/DqhdmQXjrfkMT29M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651217158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o8TJmDib2yvHl9ML6fDMoIG4oQtwidDdgpIA+LxUWFE=;
	b=N5zfAziwdSDT2gEouCh0w4nLx3xtz5KRN+anPjuGrdd2Kko9ci1YivQGlaCaY13u
	YzV1DQHoURkcISkj+jcn6webFk09E8EPy1IWk4zPUL/IGIyV/lv/R9WW4mJqmIyUg4p
	aryYw4CVFJ3Sh3HcLQeUXQ+kOTsUiHg/5aDgNmsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074365084-1462bd04-f2e8-4f7d-bebd-439f54882c85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a27e8fb919efe48e8ba752c931081cb79c229022b00f5fec7fcb1b212b64ad2
Date: Fri, 29 Apr 2022 07:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651217158
