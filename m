Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431024A01
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660084852;
	h=To:Subject:From:Message-Id:Date;
	bh=7nMjxOnT/6S6UlLWdQxuyVrqIbR8EYfjt3gRXaqeRQU=;
	b=VnfAT45KSZaLEL2H5+rrvZ1PKh1QMUf3dQEBj0Y7rRrySPWXGUYSd7b4J/0C8pKP
	ygdHVNZzLegarYsdDsd0gN82AZTDT0qsPSyk01H5Bjqu0xlYE7Dvv2nTMCwLpt4jhZo
	9RS4658XbkOzBaiCSWqxBHIT8FEpfzt/msxogtyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660084852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7nMjxOnT/6S6UlLWdQxuyVrqIbR8EYfjt3gRXaqeRQU=;
	b=EshG/vbXC6BkZYHMzHEpO5Xgtx2gnwZmr8yQ+3UUE2znnti0v9J22ulXbM/7nUOc
	ms4axDxAC8HqtW4HsupZKo8cjaQpUIG7xfgSHuD48ZsLvElkUfF8Bw++aOQUSmVMCye
	BrK5kdVeBtG30EnhygpCY4pUL1/PP2pzHKGi65hQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284c49743-0d28fd81-1934-486b-b61e-86a80370d8d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35c9552c3380033ac4aa0190998b9b87dc3e0d072010145b6a53f8812838cb06
Date: Tue, 9 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660084852
