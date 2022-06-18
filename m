Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19357B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 16:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655571239;
	h=To:Subject:From:Message-Id:Date;
	bh=WsUeZWbK96lRXgQGNVYRIzvc62XQJnb+60Rmlbi/lrM=;
	b=iYcGa9YKr0OidpjqADc9b9Kf7Kld0j2PfeNf/FVH0Vb87jAPR1XVh1yDmImvU/lt
	tdPOWeTGPbckhodCRSvpXOuMeYAEoqNTsXFV4CKFhWV8FVUTTsOd+TekruYK5fYDIAF
	ak/sExd2Lm/QkAA9zB/OzG2RyyBucPG7hByCORMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655571239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WsUeZWbK96lRXgQGNVYRIzvc62XQJnb+60Rmlbi/lrM=;
	b=fU3JnqBcn/0i2+1llkEcihY+yBcDKIuccNNd3OZQOGFWxKB6Fb7jUdKdwJhRwPS+
	Td5p9j1K5Nt125Y4SADT0yGnF8KYO2zZg4TcErxCLpUROM3FvvRmbpmw82bLcEyli7z
	3cdkHTUErg0ELlzci93DopHMRxzcUUsNaKCtS9Ok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018177bc5176-b65813e8-64e8-4c31-9be1-2fb3d18de2b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f78aba4e5aaf657aaf4f5e627486573288fa30beccc32ecd08ba4c67915be88f
Date: Sat, 18 Jun 2022 16:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655571239
