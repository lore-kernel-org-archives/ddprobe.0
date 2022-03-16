Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5320538C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647435985;
	h=To:Subject:From:Message-Id:Date;
	bh=myrTBrvzb6hdNbL5KW1265YqITUP9oD6f2Yx/H5qSDU=;
	b=Fmrv/Ti23OuFoeD1oyOamvyVj8wEKkdhRt+Qnas+OtSSO6hpnIe6BTHejFreYZNF
	RwL2G8OkXAl+l++KeRXUUEOBZ+VFvUisqCFWVVjKfNGrFoBmF9mGSQgdph3ymumdTHS
	lw++NUH2RV4nT5A+JejSFXmN54+9AOtmM/DZojwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647435985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=myrTBrvzb6hdNbL5KW1265YqITUP9oD6f2Yx/H5qSDU=;
	b=il3MNl/Azqprpt+wUt1mOLyM4lchcm1Q6OHVsMpfY9pVQ0Y3d3yf6NB4rPg/jQ9r
	4EUaa+/mPZa2o0O0zlqk1HUCB15hqEnbfDFG5LsL9jKs04B+VNYCd/T6+HouH0qfu8X
	Nau2WNEv1ECZKWZkHr1KWzpMqZGUEnkp0Z3lBD3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92d62fde-517e6bb3-2832-47ab-9ece-79ea2d4b40af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c305511a0e0f11097a63ce66a24481b3e4708ae2730515574ab6afecf81f5bc4
Date: Wed, 16 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647435984
