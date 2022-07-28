Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9514A33DA
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658966452;
	h=To:Subject:From:Message-Id:Date;
	bh=M+RC79br0U6QGQET6G4PN8nIckDGfXwfJ8kT3KVze0w=;
	b=DhH1yvQk9nkU2BBDXFPGo5sPys70nPeudtX6LrsYODPhL4Ht21XJT+1DrMB0C0Xt
	gvADDMxbwAhvzhghjRYxnTf948k7xSP6aRth7LAAdozwSTfnlznnkzfgxjJKpTsHeN2
	4Z8iB3MFlXrAlENmQpkpx5lNGztPU6F8EEXPcx6c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658966452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M+RC79br0U6QGQET6G4PN8nIckDGfXwfJ8kT3KVze0w=;
	b=k1RadyVx9rq1dzUURquBos74HKQmfY2lKjZmE373EXIlmSCPMiV9N1ltSFknwd8J
	WcNhuU3mG1LxZ00laZPr8t48LNlpKO7U+5Miy7bPpwrrs06Pzl76FrjKjlLMr7yPWOl
	bdtwmst8vPdIvqdebLvWoRJGGWptAV3oBBMKg8uQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182421b294a-b09d5fd8-ea58-4a22-a63a-f6e1d2846ec1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e7e20027e6baa13341abc38da81306173bc5ff59726bb5f61afc5fe5e1dc25b
Date: Thu, 28 Jul 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658966452
