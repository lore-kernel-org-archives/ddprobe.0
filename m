Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EE9AA31
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647941485;
	h=To:Subject:From:Message-Id:Date;
	bh=bYV7VMcENj6eIQ6OJG+kPoWkzibHcYArWoDKeebVDFs=;
	b=YjYdG3DBe21xADBDmwBd/D2v1hGNXmSw4Id+KkaCDKyboPoTrkGECZKuK1cPJ5P6
	l9Bsq5Qr9xYLAMU1UDR+Kj6hWsecOVVmUYLQpMUO5yI6RONFtZHU1FW5NAqnTSDL3uu
	cA6MGaC860z0YnuTyodLMWdZy8pIcSYwB4QMiRKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647941485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYV7VMcENj6eIQ6OJG+kPoWkzibHcYArWoDKeebVDFs=;
	b=TGNClhL30YU48X0BkAYCAOEVo3ds7USyZ9HOCQB5TyXkhaCvgctUXsRw4q1SXWbw
	YMMr+62YGe+fbgj0n9hiONKZw+XrePY56bflyU3DZlyKn0OIcyUrtIrQovswacpIuRq
	7PhW8F8UZKSiRu85q3Jv0RPJV8h3RQuYc8jHwKHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0f780ce-ff5932c6-9a56-494a-be6b-4b5d2f64d6ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b47230bcffd7d4f27761d0d6d509eb8cd9ff85d1ef866d464d6b78a0e2765d10
Date: Tue, 22 Mar 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647941484
