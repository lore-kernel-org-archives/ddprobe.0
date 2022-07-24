Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFF07E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658630212;
	h=To:Subject:From:Message-Id:Date;
	bh=hqcacpOriva0Nr3+dPbAyfpX2iMW6ET6vvLSQgTy/O0=;
	b=E3bBGtYzC04u5NcYZ4vWrM7CtU7KP80BE9R7xwD4zAzFEHkKVIgL4xgrrUh1taS2
	M9Ah5cdIVpVuPmuETNIShxv2xt+9TfH4ZHpDx1HNS0JAT9VPPS6EU0pj8/dI8ieKShd
	QW3roPWF4qhQ+iQBwINQ92o1JCmsZgvMGsNCWMWU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658630212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hqcacpOriva0Nr3+dPbAyfpX2iMW6ET6vvLSQgTy/O0=;
	b=MrOYXDde8ENUT6cxMcd3FUZUoDNM+DPqEIr2oFeMYQTu3IaaYF0iQmoBIIDDYM7P
	B7pRg0tEKjaJYLCFSEYVEVz4z17WWyqSp4GrzyBv7K7dfm4E2yeriMHMMDvpODl3Jdm
	kHWFTQZ5eQlJ91xYYlX4N4B35+3czw526sttoX8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822e108ad3-bb7ae286-5f22-4db8-bcf4-0a38b52b0efe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9e8b4ee96c60d8e494016ce282a16dc3468118a8236573fca4374c96904cc04
Date: Sun, 24 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658630212
