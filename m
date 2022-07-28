Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736777A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659038452;
	h=To:Subject:From:Message-Id:Date;
	bh=B3cCVw+ONO0wyV46c+Z7rHgeutSo3aCVtHoMRXCasdo=;
	b=leL3TPhFHJwUdeGer/eL/O0HvgAixNwO2ADCy9ykOcsw+JBby5FmxO4zHLM467kY
	dYSnzMBwKNTuZaIALM8laey5pYkO2Vmq75p5KxqwlnZQaph1bV6/OH7egN4fewRXlRt
	+I7iqYLXG8HzZJmnX0NrgnfUPkXRtGhakM1lkm0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659038452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B3cCVw+ONO0wyV46c+Z7rHgeutSo3aCVtHoMRXCasdo=;
	b=ecJHKcPEqBPAav/ds73t73xnf61/0Ulz1g55Ab8mongOgUj9UrFP2AQJyaTTf90o
	hFaDidwe8HMyFmloihy5Sl/k5jc2roKuAhb4UP6/thMBImOMNxbhyZ0HQsUwQyppd+E
	zNJvEo0u3i83+LfQ6ZKnlQxvE0kt8YrpKxBBH9FM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824665cb3d-4a271b59-910a-4de0-9285-d257af19601d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 554cd8814a3d15bd203549cc0c0cd7c96db9bfdf0ac49df7263d25c6f471e9b5
Date: Thu, 28 Jul 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659038452
