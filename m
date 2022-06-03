Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397827FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 07:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654239719;
	h=To:Subject:From:Message-Id:Date;
	bh=2sdWrq4hIvF4KYWXoTK44eRiSKJ7ExBh0ZVl+HwAetw=;
	b=fZ14rvI3FzCKIkEwPu6bO3G/JgVdW8LV5DiiE1o3Py+cu1msywfYyrAnXWK8S5XS
	BRaoFx5lL+zcPTaPK2TqZyX4NzQ1Qc3kUv3L9PxAR25atupQBF8aD8DfnniHm1Zev4N
	oyJD6G4vAVaYdahsBppV0KKYtmyBNJps140zT5gw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654239719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2sdWrq4hIvF4KYWXoTK44eRiSKJ7ExBh0ZVl+HwAetw=;
	b=RAZ/zFaQ5awCsKBYKKQ32y552WSwPzdBS8V34YffkZDt295laFSfqCBPeT8pe7Vk
	2wcQ2dU29quwTlcujjDcI6UCA4OL4tcGbJZMDsxuth7sbPcLTjPNuMXfFnixshsBnLX
	64MeKsw/O6pmdD5G70s8YizeqKOCfYdhXca5gFJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181285eef5c-5b17c733-a42a-4974-9f5c-3faacb8b50a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a6c706a39f45f488c8142ec3cdca834fee47928a4e12788c7839fbefd4eef1f
Date: Fri, 3 Jun 2022 07:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654239719
