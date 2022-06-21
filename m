Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3121C0C
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 23:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655853659;
	h=To:Subject:From:Message-Id:Date;
	bh=Vbg4s7LqhlAOU/pOuGaUDQsRSTWcwqIn7IOdri3aJxk=;
	b=Ruym+OzuOWBKgSmbCK5PgrFpkKkdR++J9r/OrreV8AjB1OXf0cH8DeHcLgqCBekw
	cxNhie8n961LTkoAJIqVOD/7awG6iKGPCerE0ZpJ1/hoTcnCY+VZlSUerRZ8JgqK3px
	nNjRO7FsS9rpklOC2vj3qH2QAdvyITdkutuuw5IA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655853659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vbg4s7LqhlAOU/pOuGaUDQsRSTWcwqIn7IOdri3aJxk=;
	b=CD5cgpCp9i43L8s+kUBtIemN70fKH7EjHSv0iw74QuP4WZKZIFKPGCsgp77oO2Ro
	Z6ohx/+x179JgEhst76vG55zmeouTY/RK9VOjkQGIPpFwhWMnUHAy9hcjMDmkXqj7iV
	5JVIZHJEGTncpBlHoMpPARTUOaAy16yvKFkkRYQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818891b4b1-f201cb23-4ea2-4e60-9bbe-c03861576010-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ab8029f59196d888ba5aa40b62cdaf8a0f7b367f8aa10b4ff70d7c3054d0cbd
Date: Tue, 21 Jun 2022 23:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655853659
