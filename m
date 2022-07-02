Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2B6110C
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656721012;
	h=To:Subject:From:Message-Id:Date;
	bh=jnySwnMzmsyP1J1BNpVBh+CNjIUlin2yNJUBxchhy14=;
	b=NsUWLJxPlbi51SK6d7cfcdm4HMzqqFZGewVrB0MFtLK7KE7tFWpmhld+/AVc4B4m
	RFDwss2DtAk+7HdACfB7MMdPykmU79H83zcFNf6xgwVbgDZiqCiGzXwxuix4uDr0on1
	CAUCarMCQqYORD2datlGKojyPB7gFPz6UYd8+47M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656721012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jnySwnMzmsyP1J1BNpVBh+CNjIUlin2yNJUBxchhy14=;
	b=LmeiUUy/Gp3eow5KgbA/nQl83ZAcugJL3Yj0/er1ecAJPKh3M4ah0DuWAxokmAED
	sklPk2lqwV7pllqMfrrkAff6ZKSEIrSdSaAVDFN/ntWE//ghhiZ6Nv39gxCRlIe4YTO
	BVhpOeXNH4++1bLpPiyIRs+SFyRHdkeYYIZC07ag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc447641-e538b5ff-6e84-4766-83be-49260f96c74c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57772e2729a393916c948bb1c99ed9e3ae12e659c5659130ed016d112ebba6c9
Date: Sat, 2 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656721012
