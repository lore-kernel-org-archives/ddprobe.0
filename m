Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BED5ED0
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644888684;
	h=To:Subject:From:Message-Id:Date;
	bh=Ncju7TG5XLtVku5/iWQg3jvqEFcn4Rv4eXc4qcHnHFs=;
	b=WA+f8XmKKbM94c6cmcme8V7/mMKRf+1ylBRBOrdKbMlX6l1PIGRuJXgR7Z+fQwf2
	WIOChx71uZstHI/QvM7dKKxoE6Tob7eyBb2LHne4s5SoJiWCvwxui9uaqXm4XRGgSs4
	7Cdqp2iqLb6f+WbeeIaOk/4RT7aHjoQT/BWhkO6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644888684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ncju7TG5XLtVku5/iWQg3jvqEFcn4Rv4eXc4qcHnHFs=;
	b=C6mIRpBW2iWwXu1Py+PpKkQ+Zqy+t6drhUaCra/viyt3rOnDtCRNwPS8ScZ2OS9u
	ngdc9CTerqV64Ku404HFpCcLGtaTd4DWQDOTApun2BFVRc0iPO6dut4qg+CT1PP4wld
	g+cWSrzexy82G0YYLFrVMbDrkbltfcTFY6MOXW5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb01790d-2ec5e5be-03b7-4091-a1a9-4053ee845900-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70620591b8f377435669a73e295ae7221616e9df4f43b67178acdca4e7929193
Date: Tue, 15 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644888684
