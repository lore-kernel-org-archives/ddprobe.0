Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0684115A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 04:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658464012;
	h=To:Subject:From:Message-Id:Date;
	bh=49Kj32KPs24/mn9rJcsF2Vr8d/Rn4vkGcN54sTOLoqk=;
	b=FIFZ0MNQFadwEDjhF2fnRcwifi/Ur3gdLvRVZlH4jp4MxvcmhiPxTSMR40ZCblpN
	Fi1fSKF0eX/YTB73IBUwcMei3ASqVMPYfBC0cKawqWhFd7LlGIGq8XaDlNSbCafOzSs
	kRDmg0FlrEvkVvHcZwF9hdWa8nxRiscKMHwzdwdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658464012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=49Kj32KPs24/mn9rJcsF2Vr8d/Rn4vkGcN54sTOLoqk=;
	b=YBKVS6vUQ9xJAB+hvZPIJvuojH94IPOpkt1mvmZ5+F/oHMFbF+Hw2KXONHBjrOeO
	wHHavg16zVvDMrsAT+I7RCb+5/87agbVaNo+pjX0LwhlWNi/P5qkockvcKjKcoTEGJM
	R1YQ4B/kJDMto/pfTLPmm0xQ7olLKE57VZI+LOdI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182242887d4-0cf01f3f-a17e-4a67-aa1f-14163c881e3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59c1eeb1aa01551f35069c21cf70be7fdc106b833306a62cfef3282123c30faf
Date: Fri, 22 Jul 2022 04:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658464012
