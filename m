Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29478ECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658143612;
	h=To:Subject:From:Message-Id:Date;
	bh=Lq7erpdIq90GGNdPyTQRFUpk04fRhXsUrZwlf1MNb70=;
	b=Uly4/wowc2rUHkvOZ2xC+JDQt0ZMYxyVXkTqZK9Ztj4YGv1MiRR6KV9afKRzE79/
	/IvXCPTte33Wofs6b9Dcw6Wx3UrbeNTp/oR5Zqyrq00f0946SyDx4oQGIW8oc9NL0xu
	q3qgY7IKNxjlfVMHOLYU3JlqHlysrRUuaQ/fF5Bg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658143612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lq7erpdIq90GGNdPyTQRFUpk04fRhXsUrZwlf1MNb70=;
	b=N3GJJWP/RMQRAZwcXDpirsAEnFsqWwuv76bTEwvXrI6/ulASmKOLT0Nna+7K68XT
	nFJub390MsXpShfFsUa1w8W53HIuEAY06va0w5g7cojAzn54YpP+0449uk6MQPQNqsZ
	VzB43YCADZMZCESGpBWfRv2g5K4Q4Q9MfC61z044=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182110f9db2-26219299-9aa3-4dad-8d6c-2c5aa47f50e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72fc03230b0c1c954f5e5018857b8104b5ba3ed26cb8a1e99a83335bfc84ca89
Date: Mon, 18 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658143612
