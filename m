Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD193C35
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656437212;
	h=To:Subject:From:Message-Id:Date;
	bh=52eOjPsO8I8fxifbeiSpzNRNi7lBshiCYQvyqtzY9VA=;
	b=P35fRJMVShya3fo2sK4EVXwrGW6p3F4qtcgSlFvguBDfjQqy+nMb6IRByqxKJ+jI
	8Up2Whzi4v5NcXim3emUedlK0tcPUvCUBbE29fMm4/xiT+taNzn3ooZUXsCqNzNoTaP
	c5Lna9vl824E6wsqZ6Cdi3BO9vlefMlFlGkXBpuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656437212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=52eOjPsO8I8fxifbeiSpzNRNi7lBshiCYQvyqtzY9VA=;
	b=RfBNvoySAUAxeIyJ1nprL3og0WN6bMNJiepNi2rx0tllIhUPtzD78gj4jfUgFADW
	B8KKiSk7sWzApxL8755Ko3amz190chBuTLO1rwpdUTCvj/PiwYU7m7uPCkqMRK38I1b
	O3CIetdVYk+0BGBn0Fn25hR0Hk1AzGVbackD3lss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab5a046d-aecbd33d-93cd-46b0-a29d-6aa5165e81a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1102276df96754123300bf884d32155b0504ceb5af3efd38b46ac7f6f60a8900
Date: Tue, 28 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656437212
