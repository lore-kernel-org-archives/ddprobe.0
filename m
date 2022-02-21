Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41D66128
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 02:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645410985;
	h=To:Subject:From:Message-Id:Date;
	bh=iK/GZkC/RprRLHDQxJcnsNVf/muXx3R8EoQh4ncaAlI=;
	b=GM/rD/FVihkwe8L2O75F9VL8odbi3ZVumwU2PbliokcfdhyMNmTy+eq6Qo4YzYum
	Vrc6np4vuL/0lGWLbBGCTHhPYeJIfD9Vjr/QC5QDOQOFbPaOyIYDMMXcnj1RQYKZerB
	JRLCYX99VuR5wg7M5rs1dEZ1Cqv1ps1N+C+bpBGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645410985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iK/GZkC/RprRLHDQxJcnsNVf/muXx3R8EoQh4ncaAlI=;
	b=iIU/z41VFhlBeZwxEdgI4rpbw7n6pGvSRkfo7M5Rbip8IeNfCc6niRw1tAuebi/c
	UO6pcufJ495vHu1rKD5bFb8cAmxKfb9ZrnJvviZWV+ozQsyySEkN3ds/Rr8n3b+8V5G
	CFJxid76zZO7SghYtIsdSGGszqbAm9328tRD/ZkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a23236e-180e9335-309d-49d8-83a5-672ce2e627d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44cf479f57ac13ade7bf5b79d46b1816145b82eb96db97a64c61338cfca1e1c0
Date: Mon, 21 Feb 2022 02:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645410984
