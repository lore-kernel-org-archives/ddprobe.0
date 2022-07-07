Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1801928ED
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 21:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657229212;
	h=To:Subject:From:Message-Id:Date;
	bh=IdJMvqdgthLAu93I4pp+wrcjYrFPCvcowEnYuA3wfdU=;
	b=YtHLuClXV9tAUu3uhxSFG0gQ1RYgxCsOY3fYpyY47YP5j7Ko4Cwt/aNM+2XbWqRC
	XpHMQiUISFwDAUv9DrceMTuFSn6H9qrJBDSiivUEGMoehutO3a2kQCbDxdn8O/DnaY5
	TxpNzuqpL9hn0hKdOAogcSkWLPGpSVS1YPXAQhhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657229212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IdJMvqdgthLAu93I4pp+wrcjYrFPCvcowEnYuA3wfdU=;
	b=SWJv/ZK0KX4wO3suNKVHk0zxCyp65pg94APcHknpNNhlrovCh4jomTsReUNyvTQk
	hXR0zzpR6uhtTc61zEMp2sBX6sWDgs1C+BMS2e3Nv9QYaswI8CKY1B0Jtaz8dit+yDE
	7LrXRBNb+bJI99ZEgZgF++MPVum4glbjs2XAaK2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181da8efa97-6d5edbf2-83b2-487c-9526-774b596011b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f13b9a4bffd649dd434c0dcb463830b847ecfdc7c237d059e4d4a18b744c47e1
Date: Thu, 7 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657229212
