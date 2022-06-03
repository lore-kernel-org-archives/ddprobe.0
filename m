Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED5F1386
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 19:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654284899;
	h=To:Subject:From:Message-Id:Date;
	bh=ekcpo34LkYfwhInTyTsSWle7Xk0QHUKF9pt0w3P6MYU=;
	b=d0AXWyjfIl+6l6HOWMxOVvUwWgktaT2Wj79x97mtNz5SRfxZTGgZ71DPd4epOnWi
	5/eWL78kSt5l34fbi+ICdQaXpVMWgTOrWdgD7vJS92HL04oTXhQHaQJBXNrtzmIMQM2
	T6af9Ili1gt1VoGZQC2g9BQNVknmWN4rEuYczX6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654284899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekcpo34LkYfwhInTyTsSWle7Xk0QHUKF9pt0w3P6MYU=;
	b=kGTmVpqwbV0N1G7/ZgirNhZcGw8xijUDo/34CRnWfXPVRa46PlNNxqX4O8Af1UEb
	yZxbTm8BYWLaZ9GYCTa9GDbehRT6vaF5Yhhdrv4xOV1C8TAbCVScoyAguOQL5gFgJ88
	kidK2JBaNJ4EeL76Iq3w5MTONKkGMnixtGdCOpS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b10540b-712aa982-3ddd-4165-9f6e-cb800a2c5617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e7cdc024c62cbc9c546291cd5bfa840302cf9d1bc36839b464daf2ab02ca7ff
Date: Fri, 3 Jun 2022 19:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654284899
