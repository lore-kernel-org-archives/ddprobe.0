Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435D017CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656296812;
	h=To:Subject:From:Message-Id:Date;
	bh=akW8xUBQUyWAvWTw9CMLJ6xv59kVhzFTubDV73mD5lU=;
	b=F6W3oSbqzGi33cWiWlmSrsD9f5uXJd1hLRh9fhUE5VPXcGGAnR1Ve6+y1FiJ8EmQ
	//JpTLoOq6M/4VwjAjP4ZJwxEQuL3q859FMeItjoeMG0WDSke2nPuCk7RSz+KKhknfy
	July74VuOdF3XBy7T0g2TV28WpDU5rUIuSKqi26Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656296812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=akW8xUBQUyWAvWTw9CMLJ6xv59kVhzFTubDV73mD5lU=;
	b=IoV71Sw96ZcQr7ajh/h9ofD5tZ/KPQ3CXsDa0IHBatjvtU97/6z+IfZo+qg9ee3p
	DXELEHoG6A1pSpmSlei1zwabaa3MOYElkPRO7aHjqtVK3Yj/A/FdVvbUaO3p4CrNkio
	FtdNPIOTlSHfRaWRFdkAfqkITpMsxfwgnED1waeQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2fbaf41-4cdb180a-3633-42f3-9005-208b20bec694-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a01956a5179604a230b62883c79e4b37f6c14c3037a125ff1fcb5a55a1c0682
Date: Mon, 27 Jun 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656296812
