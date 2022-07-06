Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DC62F3A
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657107412;
	h=To:Subject:From:Message-Id:Date;
	bh=di4Rk/9dvA4TBIRf7H6ICGFBAf06gfHr2CN4KRV2q6Q=;
	b=AX9AzFYHnXNd6B+LO3Qiu2jvcHDZA2ejtky2zig33c8Q/8V5rIPBIIcnSY8dpYWh
	4oz1IW5Jr47NWUo2ZQ5yl7t6+FMBAPBCVXEHNvzBS8yRmLcH2onFVPPkIrPd8RRV+Vi
	M4z4V+O90h+upUHq24K0O05Ui3ydPH1gkd0jzkgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657107412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=di4Rk/9dvA4TBIRf7H6ICGFBAf06gfHr2CN4KRV2q6Q=;
	b=NjB327RO4uwvDs1rrCVHOP0b6sylwm+0zjZND7sVIdPm0bcvf/qSeq7PbgBaXNlD
	M23m/WSpqEs9+ixmnsY9uTFEZFDJUvwEPSGfJi5RYDS8NZp+rHicUNvTb093HwZ5u/1
	2j5/E6FA9xyf6dp0hBM/BE3m+ZdIf+3P90wfbhCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d34c7527-34d29bc9-e7ad-4d2c-b5e3-d6582ebcbca3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a09642b3aa689f7175e14de80cfa2b897914ba7621e3c46a8a924146c8a5debe
Date: Wed, 6 Jul 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657107412
