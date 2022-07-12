Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74D623A7
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657610212;
	h=To:Subject:From:Message-Id:Date;
	bh=je2ln0IByhQy/Vsg7lccB2DkNNDKCZ066MgWDLLxWVs=;
	b=fwhZ/DTHQRZVi/VkH1H9KcSSjZuVSb5ahPutDNd1ARbMrflzdja0jrPAILkMy/a9
	GIgJir4RBi+XoYxO3T0E6KyDeH0yc+tyPKWxN1kusp/6kjEu3blMqtyvbxpGyapjuSW
	CbhJ6BvPtPJ2kN29zV978+yygP95KvOsWY4LaP/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657610212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=je2ln0IByhQy/Vsg7lccB2DkNNDKCZ066MgWDLLxWVs=;
	b=BKaI2xqHEJv84WUdclNjn4Q6St5MViewQap3hZ3GVBnh9H/FT5bgTDvoR7Xol5Lv
	p4VWP5WwhyOSZ4d75Ac/smh12xT8qAi9/jQjgtNFGszXzlvDwYIZSLyelTZ3eZk2d01
	ObE2cTfKEGaezOe38jc/c/1PKKgfwGPdgHTqYX8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f14493bc-dce97dcb-d8ee-4d51-bd34-4109ab4e88d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0eb03bd810460ad893cf816f6aecc5a42ad60fc602f3eb9c7369e160ecaeb0c
Date: Tue, 12 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657610212
