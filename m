Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366E32C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656329212;
	h=To:Subject:From:Message-Id:Date;
	bh=piapEqDOM1OkcLE/jDM9oFbpNRQ6KlW/VG+CYyc5igQ=;
	b=LQuY+5e41Ux6Q/AaPXtV1bCbQVnFR9JDfExyu7+D5ygyGOBQ5HHFzBJCsRRhUcNr
	p2uR0fNhlk98Lumj58e1It0QuQmvLF85oLM66qA1OYTii/b5CpcXbswDa0abSIdv0t4
	UPTeJpzHOaV7cXuWSYQSGKwVwZu72kU2SVZX9lAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656329212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=piapEqDOM1OkcLE/jDM9oFbpNRQ6KlW/VG+CYyc5igQ=;
	b=KLVODjBVPQTSTh7jc2LxHPISvvEk0SuZHaweLoZS99u16U4xCwMXU7S4tFycWGFa
	+IxcqB38UnwcdBigXwAb7TNOt5Np12+wjRU9PSOB1o0wiff0TsTJ0U9SLRo38oTjUwf
	JkKi3i2zujaGs94kBw27fc4XNk2yF6TLh9C8s7+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a4ea11b7-73ac74da-706f-41b6-b974-2fbedc31e939-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37825a81022e56ffea9d98134a6c039e0c0a5bb00314ab4704da06c4e72eb4dc
Date: Mon, 27 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656329212
