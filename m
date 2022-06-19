Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4547B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 08:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655627519;
	h=To:Subject:From:Message-Id:Date;
	bh=OlzwKuq+pFm7HVcR87dIPhZLzkJ2u+57Oou7ImDXEYk=;
	b=hzEYbM9IItCnQlZ5MeCyLMEZeHFo1qReWRY7TJwO8oj1ngpBf2nhfm/8B8qaH/9M
	QOMqawQGycsMlkOyfHoipPene3bgMl2MU2RqhxtosQizIKa67Fw6b4U7s2FQsT6fq+h
	VnTnv4FqrptfpHqQ6CMRLFgYiJgemnnZ4malNSSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655627519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OlzwKuq+pFm7HVcR87dIPhZLzkJ2u+57Oou7ImDXEYk=;
	b=frJQLxU1cPfrSIEHlRPg1SQNJikemmynS4QzNl74ZhFuNnpNGBMjt0LNjAC+i9B8
	lrNVm9zNXgD9wFP+8r6cy9pUfzbgbtkvOGMcqv9q+ksOe88hWmedGYBDdbd5flK0YSs
	dxUH3jppGq736bgzCL9f67zc3rrLcjVpxiN2A0lc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817b171507-7874e1e7-d63b-4feb-bba2-ed45daed3507-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71575877e482bb35794b22e18d8521690b915357fd8ade71a8448816dbe23aa1
Date: Sun, 19 Jun 2022 08:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655627519
