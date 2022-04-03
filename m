Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A957A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 06:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648967818;
	h=To:Subject:From:Message-Id:Date;
	bh=b6jL3Blpl39WjzhuMj4RjGpy8AQ+2uVz1B+l6ko3E9s=;
	b=kS+chDXDBUf1FDjPCOMnxtfMJJwIELNQvAP+1pRIrSUoxw49B4gNIVk1AzAv2038
	E681QwSwKNqe2fMDnkv38miZ3Uz6OHBM4pnMOWF/CZTsi8B/FSxPH3v/+jsNc4l4sEM
	g5xRQZaSkw+RfsPBs2YnbM/29rvy585Mt12cxXME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648967818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b6jL3Blpl39WjzhuMj4RjGpy8AQ+2uVz1B+l6ko3E9s=;
	b=cU6Bq9wjw3VsE96CXpf6j5qfLG0bX30fhtLEo4wosDTsL1Kjj4Yp6GVosrdEqJzp
	Hn+m292bGGV3GlTBOmcDd6/h0djBHM9E/vUFCOYjs+B1osMGb20My1Ab2bAC6AE3VrL
	GUwo1DfLagO/HUU/7+3fP/TiwIJJP4KlCKrKw1eU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fee241c53-2e5fc1c8-ae14-452e-8ef6-cff011a1324b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0110fd2b8a558a531521d277e9fee898e24ff739c4599e538596501fb6e2e828
Date: Sun, 3 Apr 2022 06:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648967818
