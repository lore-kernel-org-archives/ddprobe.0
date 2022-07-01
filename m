Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050351871
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 13:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656681412;
	h=To:Subject:From:Message-Id:Date;
	bh=9Cctzun1dzq2VmR121wqfr6FnKVr0NOFDqWkw8nAFKI=;
	b=jb5ueMQYCM8UazGhsx2Kf3MtZgM4MmFuTnMTWnlLWEKF3PIYTw4KsImgEPOvAaFS
	Zu8viU+esFEbN3EAyCKtUlqUuD8Ht0jVnz/C3kzaqjYjweAIPybDR4P+aJCA+71e8xx
	FqDjRsbrBOm+0/ydJQgAsRktRAl5OcbiUKp0i49U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656681412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Cctzun1dzq2VmR121wqfr6FnKVr0NOFDqWkw8nAFKI=;
	b=HI/SYEIreqiCnEDrSBVMREykYcAT6UcSDEOGIbppDjOX4aUNirrsBIEzB47iFps/
	m4gnMJwTpg/69+VH5dQld6GKbAVR4I806zmFKDgq+Za7Byx1FkQhm+r88jzKDEITqu9
	xNGNfScD0lUt5wJH60QdECVVGwN/ZjV7ESKwDmW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9e836c6-5f1bc836-8ff4-4532-866d-58cca1f6ed18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91fff89200d91408ffd32f6344030646a4c3f717cf2fca57a7d69d6965ec9ec1
Date: Fri, 1 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656681412
