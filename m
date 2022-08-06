Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591B6EA0
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659768652;
	h=To:Subject:From:Message-Id:Date;
	bh=ASV6jp6nd4uAVT2JR1ekORHMNkGUzxNo9Rg14I5gNmI=;
	b=O/1ZkcEbedqHnRoVFgKjgv8I4vNDP5mMwh79UQmFOukyPTdmqc48gK9m16RtDIs3
	YqY9CmucOBAS+EVs/wpOWeUEOsn3HB6Xbykc6CqeDzRYT073lNw3IKwngCDrS8MKSg8
	jDp1Sw3IAsYCK+J8dvGi1eaptS7FKHZD4UFjieM8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659768652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ASV6jp6nd4uAVT2JR1ekORHMNkGUzxNo9Rg14I5gNmI=;
	b=O6wH1xtNnbprCQvkLpFolLHBrsljUjxqoR1d2Jwwm15WzcKisEd/GdtyFewKkWen
	rjly2JgXy4S8kUROQV+WtWL4KfNPPnhRwmqHLcPZhZiQWaFYqHCKoYN23jb5QpdAQFP
	uO6rNXY2+EWI2qXwXHl53i4lNtq1sbs0LSZnW/iw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018271ebc329-191ecf06-863b-4299-9a2b-b4b00a1c3b05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a87f09273691f25429b89179bd24797cc8ce9ce9701403479b8e69ee5cac9be9
Date: Sat, 6 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659768652
