Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A141510F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 01:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647306984;
	h=To:Subject:From:Message-Id:Date;
	bh=dl+QYZlNb+OwZAFpZavkpMYFJxxHs2sZipXeK4Jy+A0=;
	b=ZjZO3wPo1pTAp0r37sCJZbEqOoRcy9Jtu5NgEit5Z7tpDkv0+T1PpqG/aHnZbTlE
	5uahls6++u6X/gCez/7O+KsVw2x8flqMVtZrZsBS6IruGGWv36tgWVV+6S5TmpdRryM
	6btIRKQ2BgNVvAFFLkmfhutC0ZRIoVK9A25THcgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647306984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dl+QYZlNb+OwZAFpZavkpMYFJxxHs2sZipXeK4Jy+A0=;
	b=Nihgj3a2Y1Gi6oDFLPYjKqgkSIGyqbXZWvo0mlOczx7nSGkmzwQ/LsNau2L5pAuk
	MNX7sTTYwndeY3TYOoFkpX2Y9VdTAKczJyS9ult406gW0KSTu0q0thfoRhJG1T3D0v9
	UdaAqr05m6cKohXiDJTAVx55plKOaaTuWSUD0ans=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b25cd1d-fa39fcea-d889-4909-bf38-7f89908d462f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b85734e0c57a0623384c6047d468c997e3e39118e285b1e1a93620618eeb06e8
Date: Tue, 15 Mar 2022 01:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647306984
