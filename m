Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38ECD367
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 04:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658723212;
	h=To:Subject:From:Message-Id:Date;
	bh=cmr5pMhgk6jDSMZlGq05rO+5nRnLIh79+UML6zpd+hk=;
	b=MOWyt1+W6oU3ZHZiTKDI1Y+otIkHmd+rxQrNo8O2KdrhIA2jwHFdkt6eUTKtMXev
	tFsL+BJjJ0mo52sgdIwtACNwqRUISeqaICz9HmjqA/5qlEQFDawEEWJTom0u0VF7qQD
	Sn6dbmZF7mOeon0juq0KPSjCpkWAiCK6dRWrbQhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658723212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cmr5pMhgk6jDSMZlGq05rO+5nRnLIh79+UML6zpd+hk=;
	b=eE0H9CJBxiDDgAgv3nA75U7yTjXw1H10FK7fUv9Kp1XA9k/MkTfd94RY946emGbk
	Cr6ctiGvCNeM936DvqIQPP4vzKuiPWr9k84Sy4Kzv2YsY8WMM4BX2ZWPMDpU4mAXkVA
	XDbvimD9es+9jlkFlCq46+PiCIkK38nO6GrDCefc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182339b9c37-b1417fb0-3cbe-4a0e-82d1-7ecfe8ccde6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08af64c7183cec9564a8282750a3083fdb66d280750a54b8cbc2f13f4591804d
Date: Mon, 25 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658723212
