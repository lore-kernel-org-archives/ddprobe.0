Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D18F2562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 15:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654098479;
	h=To:Subject:From:Message-Id:Date;
	bh=YKNsuGeQS5ZZYWp/cMhF9qa/FOKdPbSscfT90R0GtxQ=;
	b=PiG0gHLSQh4BhLdzbO/wKK2kU1uWD8Xs5vjJEeuEHHpgo1Dokn2TKohdbTxh4trK
	ISz7r5rElM8DaVKAiUNpFnzf5CWFL8xlYPIfKORip4oZ4HNpYPNW9oIdFndk2F8du32
	4Ryv2Jgf2Gggwal7ksKrGR6BJx+AHnjMIOZQUZQ8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654098479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKNsuGeQS5ZZYWp/cMhF9qa/FOKdPbSscfT90R0GtxQ=;
	b=YvNAkBLUJbNOtXkHSXn1R5eHvQWQlZMA9n4APgPBNLESb4t/IPfuJpcse0YZRPl2
	5b3O7AaF1Cn7Om3f0S6U0hVOssCxbBHce7QLaU8SW6DP0pM6wmM9Mem/oC6DRaZV7+U
	Cd8IKHcRzNFBE0FzeQP7JBw7dmDSSOth5TWPhZ1w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811ff3c933-36b49cfc-2591-418b-93f2-fc2706352fe6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4be3b37fa9828d15178e13b01791a562a3d079f2492795cf452a958876bfb33f
Date: Wed, 1 Jun 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654098479
