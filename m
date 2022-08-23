Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69BAC7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661218852;
	h=To:Subject:From:Message-Id:Date;
	bh=DW5DoVSvmfy4XXeZCVjBAECMawYp0Xt/hpUNsue5cMw=;
	b=IU4ioUBCjEi2tcfijfnIGeDZqehD3Sxe+XH/D2PJTzjtMMupQb60YJ2qlCKgZa9i
	kgCTNN0CAVP4Zgpc790E3k/+HNzCJspNEt6BHmNRdtaa4DFh+Hsy/+s4mrPawb+ElKO
	DQFa58VI+Nu+uaN9v2pKkh5dejkUGaSY0+LSF3bs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661218852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DW5DoVSvmfy4XXeZCVjBAECMawYp0Xt/hpUNsue5cMw=;
	b=JBJpdE/Acp8evFpGMFI4JgyWUZK8YU9vfQ04xShSkL3fzOQ6f8QMnIgFIrR8Lka7
	eE+q/+NehPIQxRDx+Lxj9tTw8CKrUBZkQn2oI9wKt4fJ4nAH5wqhTiVC1DmhJN49fOy
	yD+8zZy+jF8NKVpAeIlJExefbWDnv5W+YfoIE7JY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c85c0f0a-27abba89-e151-4b6b-972a-5102df9531e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e859dec7b97340de7707130e033f30b8960a0d0fd16b358bd94ee081987d3a88
Date: Tue, 23 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661218852
