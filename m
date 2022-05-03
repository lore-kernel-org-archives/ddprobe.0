Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C55633C9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 21:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651613158;
	h=To:Subject:From:Message-Id:Date;
	bh=7KVEbIaccBXtru2zVMhGcG1wWCDewnTvAr3LyftJWhA=;
	b=avO6T+wxO3z27NrJGe1ERtFRaXd8WpVrAK33VwrrXqbTyYhX/VB0Th+yqVr6FIM1
	2lBoKde4lKhS+h9iLpEWnHIU/NmMvuSdPVM+umKZ1+QL9xj5dSidCP5d2e3iuJuollH
	33CqAfKu8uI6Qvt5T45q6jcFSBTw06iB5Z0pbyys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651613158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7KVEbIaccBXtru2zVMhGcG1wWCDewnTvAr3LyftJWhA=;
	b=Y3SBcdNjZGiBxe/8m9vU6ebMkWsj42sJcKJVtIQmqzMdFStXL5NkUT2rRDu7gkOZ
	M+pbVUBi7PQAiE0e+88FRwgEoMDX4LD5nYKbCLdmqpVt/JGSsa8J43B+G4/PPqpx/Nw
	sMlkbNSLR5UtPwAM7FIY4Ao7OnF9LGH8/gzOliNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808bd0cb63-fba21743-35e5-465e-8cb2-e473ea5c7a34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 930a3a3b99c75418bc0a6d5af772de8b789f94329f59d499f309dbfc72ef6d42
Date: Tue, 3 May 2022 21:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651613158
