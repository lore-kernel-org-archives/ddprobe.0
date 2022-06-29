Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADEA7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656461812;
	h=To:Subject:From:Message-Id:Date;
	bh=Gd0qX0QyMAg1ILRxXUrTON5xpLnYKF9hpCGcoLuLeus=;
	b=Q5syu6aryiFhkj7vnp8rzzqDep+Pp0BL4O5TcMJLEcjoNkOR0d87AcErIpunoUhI
	U8+S1IVcjjqV/R8EHQ8JF+56RXtysBsZ3/5HGuHiW5y8hQhvkN+nvJzE+G4nXK+18hi
	mTdZSzALwTbUz0cvfFj2Lf23gK3CAODS4/RRCosE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656461812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gd0qX0QyMAg1ILRxXUrTON5xpLnYKF9hpCGcoLuLeus=;
	b=SV61vaUrgSxy/3TSNHVFd4btR+widJ7ebJkan5OPSiCW4DUHsyrllPg0xwadcdGZ
	wcruCsauqAjNSOKdVohia/r++mrvsmJ+1/QG4XGCwIXe8EOicGc1FxyMrQZgrcVmJvP
	JkRp5ttFjKCpXkzyZ8ZR3psi2Vbv3c3m0uz1KY6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acd16234-78ef1daf-b60b-4534-8204-3e19cb901a74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fe836ffe5aa07f25bfb85b35a439e95a1a7cc1444932a981a73803ea996fda7
Date: Wed, 29 Jun 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656461812
