Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196C37A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 02:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653012179;
	h=To:Subject:From:Message-Id:Date;
	bh=/SBJqIBwCrvrHUNVckdC7nrUlUGOsAjZ7q3BE0FNyEw=;
	b=WZXYvlTOIBFPlmmNVdPrsf4/8LMVv8ZAWOOr33zfmlAkH7EKeLYkxdrCnatL6whg
	jhCTuxAZp2fEk1l0CJ/AmES/f64KdlQViz+evn+ia9bl7x/HV/OzguPpJDNtfbxx1xi
	PxxCi+XTkfDswiSbJnoamiCFtQMbrHyA+Ve6p3KM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653012179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/SBJqIBwCrvrHUNVckdC7nrUlUGOsAjZ7q3BE0FNyEw=;
	b=Pzt2pONYQrYOOD9Nx7YzMvjuvVsXCTxU4e/OQx82GLBhK4OLT/hXVMrZUo20fumM
	2Y9GEK9geGBDLJYQsVJQf7zbZf8TT00c8IV2mDB2hw//vB5/HJH+cnjgaz2aRdfiq0n
	QCuMIhJem7MoSmjP8E5bbRNMC9uBB+Z6V9w4SvHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df342949-5cfe050f-b396-4d4b-a94b-88dbbde1c84f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 146ae0c0adae0aceb1b5d62d7750bb474b79555602fab067e07e3f1f40efa8ce
Date: Fri, 20 May 2022 02:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653012179
