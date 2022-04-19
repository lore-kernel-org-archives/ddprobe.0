Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413A010E0
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 21:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650402778;
	h=To:Subject:From:Message-Id:Date;
	bh=zqweVUz8UKrR1PIAc7hxWX3GMlu/RntC0bcEkvp1ZTQ=;
	b=OFgF65+DRb1i9D92LCL/GZ+M8L93Zxwu4ZbvinEDMKLAMQcr59eZHjpLqTo/trFK
	w4ILI1okHhN/W4TYjBkPyFjEA5GI1FpiyeXBIvqvqamAQc2PXDAbDhatUhromc6WCe8
	sar2q8xJKA5gbCBkroYSL+2TnWR5e/SN8h7l4Fw0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650402778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zqweVUz8UKrR1PIAc7hxWX3GMlu/RntC0bcEkvp1ZTQ=;
	b=U77qLX2LuSW69IyvV+RVX8kfjc2tQsaELCOTq2p7bNqn6UdIRTpIoVkODZza6y4P
	9g4jA4lAkaQXydEKOTCwMuIE/kdAjxvLIflEVgdbFtvYs+RubDjoSlHM6o/m8KDKUsM
	wdWcjRi34370cTD3lX+51HpbotWrQS4EW9V6QKus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018043abdcc1-785a8db8-ee9c-4e10-bb42-328f087db0c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ccebcaaa88da632f59a8e2ec6e44d4769389c437db2f37cd69e421d5bddbaaa
Date: Tue, 19 Apr 2022 21:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650402778
