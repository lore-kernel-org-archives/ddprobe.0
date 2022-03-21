Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7207C7B
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647827184;
	h=To:Subject:From:Message-Id:Date;
	bh=cdxl3JmNMqaBq2BZh2yGOfOfADFX3s2dXOZMlchr6SQ=;
	b=P4Dvc0EPt5MUGfLNJ4Zi1sU/UUNsupkrDCPjsdxUYr2/LJ2ExiYPPcAeoTCOwxTz
	rqEgo3cF/D8VhlHwktB8mXGevrjuo3jfra8AP/TudPDDWKTfm81Hl7pVLsw3r00bypE
	sHWr5p7NDYFv+7GEGbNU1ZXdp8lxoqB53PWWbI5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647827184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cdxl3JmNMqaBq2BZh2yGOfOfADFX3s2dXOZMlchr6SQ=;
	b=T5NjnZhJNu4NXoT6p3SGGgU6dbdWuXWymlK5LmFibrrOphlHzJVUACC3YyHtRP66
	innGwe+kGwu0h9wt5R8urHEBCRtarT2qV83eGLsMZkKm+mqAb8OT23/yBNTCx71BHJz
	Fm8hZ7zDJYU0hV2C+L4FkAWmIxyzhNV42xvR/Q1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faa276c65-c6453d44-ad91-4d13-ad4e-471b293aa872-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d9e208ef58417d502aefdcaf5bc9348b04752448f5734b6f2e9832c3eaae2bf
Date: Mon, 21 Mar 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647827184
