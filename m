Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835326D19
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660692052;
	h=To:Subject:From:Message-Id:Date;
	bh=Jl6Q13j5vCfgxKYMwtbPdfJ8I5NxcDUG7cp8hLOzh+E=;
	b=eTmASsG/CHF+yzNFiXgBtP6tGimc/L33+mNRdnO6kvS0El+P/ZmPAzOeEHE6eeXX
	rEQXyLOwdaQqfcY64ac23qglE43YtIZjQEHNhnuD7zdJirwzUh+o6fVy/+pSU7zu7rN
	yNXzR1CYJU045DpcVI34KE5Tdp9LQIAs2VPVisyw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660692052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jl6Q13j5vCfgxKYMwtbPdfJ8I5NxcDUG7cp8hLOzh+E=;
	b=X74Cv4nOFcAdHs+KK4bl9ax/2H6rLXfBoJ+tYd+k4COEMlvVwiKuKY8zWAlr/sNI
	5rb8VWxZkfGtxMaHgDqp1QmcyyMYjAAsWzMiyjYFL70Igg4MMFkImpSUMwVa7y8L6M1
	LDMC3+UVuSSePCI2J1Obh2GpABOocEaOHiYHuLko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a8f5ba65-4ffe3a51-4473-4b8c-940a-cd5696a7dcaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89b1e47b98ce08aeb098eba496d6c114d4cc4878e3f8fc59bcdf3366689f877f
Date: Tue, 16 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660692052
