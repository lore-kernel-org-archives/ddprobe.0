Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CF12F39
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658950852;
	h=To:Subject:From:Message-Id:Date;
	bh=AcN1FiCC0HIRdSHPbHe6SbCYUrBea7XH2PHr8rf2dpw=;
	b=G5WUm5Zzzk7uHjLeeLdR+j3AkJzZMEOeaWQRTcAU2jSTWBBV4V1z89ZPv3+1f75T
	eMKTIynIZ1bPzlAR6gaANP7Kxdla/fyi4oRGa8Nvd1uShW1+NwUNLcGO7kOwqj33qdC
	JRyCLEnoK5WVR/EvffIKQmSopaCNrkQ6BJq9DqJI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658950852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AcN1FiCC0HIRdSHPbHe6SbCYUrBea7XH2PHr8rf2dpw=;
	b=StIRmXG0/K1l/DUaD2vmm1VhHwVbKQjLJrZlOFIMR73dfv0r18sj4sJ2GdYb1Oif
	5dlwkHivPv8MO/G0rZthOYbcE4BszDiWA2pwumPKGOlQ/H4pcbxtb3m3bmKi+iRCWLq
	vy6wnFFWqqXK/kLu6M/+a6KXUEl/sRfJj58vxhtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182412d1fc5-02e01886-766e-4ed9-9c30-b62eff67240f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 178ca09dfcbbaa9aa423dcdd9f75a3bd49b504d5b400f65a58ab8b381c3a1514
Date: Wed, 27 Jul 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658950852
