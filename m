Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C3D7E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 06:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658818012;
	h=To:Subject:From:Message-Id:Date;
	bh=S25EOyjCMsRclmPFpIXB0BNv6tygbJ8DX65F7cgbbXI=;
	b=fP9TsL0sOZffszoQ402MLGTYWwX+U/XIDoBkP8n1svI6Dcz4pT1/ZRVZeMI5X8WF
	nNbvOjtHFaRSA5htWwXYYkw74VZLLfVryzJJW9+4zjB4AyeBab+WIrb9hr9y8gHysfj
	WDKYM5tZL9zdxI5ALvdPr/1+2+/nT4qJqCNgL4pM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658818012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S25EOyjCMsRclmPFpIXB0BNv6tygbJ8DX65F7cgbbXI=;
	b=foeg7S2O9qiRE3mzlh5ZRsQR99RX5lY7rn0WeH2U5sV5E23nygkK1HkpEerJI/eK
	KyHdfirNnbn0MKFjSvIP7jqWooL1XoX6OGpPgx9Y9akIwTnN2dPZ90bv6bNqe/P611p
	tJ7Gx59lGsfOkFyG2p3eseLiVQ8sscvuD9PcrnGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239422465-b59d68ed-9a63-4e73-94d0-2b5fdfc8d7c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 359bf6e1dac4a7167a3771acbf0af8e08b227390521f1d7f6bbc32db7d1d0096
Date: Tue, 26 Jul 2022 06:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658818012
