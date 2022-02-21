Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F9429A3
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645453584;
	h=To:Subject:From:Message-Id:Date;
	bh=OwhHSN5FS+vfDdAVDxZKI9Pp1NA9p/Nb3YDglT/clbU=;
	b=TJhgyEq+jODm1fnQu/PXaidxFVmfQe9iQBo5iYUIOPOZ59SJclgWYSz3AI7VpnXR
	IUepg3/wKtVqtEyLuLRsA1LzzAL3CZiSkU7K6X4ZEbD2PdnbfNFqJYGXhJ6d8crySq8
	xPB5DST5wY+RSwWL9MPiHkUHlMkwpTpen53bfIA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645453584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OwhHSN5FS+vfDdAVDxZKI9Pp1NA9p/Nb3YDglT/clbU=;
	b=ftoksTyanG38Md4gpnqxVlnGkOLyu8RbWiRs/gGzG1NjtjBnatGUSPBIRGl6OF5Z
	WaGlkIpy4QSgDCTTFi35bm0sKrFbI5vDXReFjRUfvFD2GaBLoGdDh+yYQc+u0qZLQAa
	ZAYqZ5PQScaUBOGtBd2r2zPao3OOTI57sBECRSMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1cad2947-f6c93d85-2a8b-469b-a94a-644b51263b55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26a665937b5f5c04fba8fd2e09bf006548d010c10f9a85f88aab7fa703fd52bb
Date: Mon, 21 Feb 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645453584
