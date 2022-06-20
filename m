Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0D5D7B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 00:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655684819;
	h=To:Subject:From:Message-Id:Date;
	bh=M7csYxMsruhfauEflGtUbOEL5VEOIQQQPo3eKimzyVc=;
	b=UOOOeTCKQa97E6HwgAcFzNgwqgbZuQ4inhtR+Kfxd0FQtHeWfS1U02UozmCPLVir
	zpTCbAXDXCKJfYRLrgClz7Km8VhGeD1AAqr02ETv+dRJlIQjfuIDwZzrqm9AMuI/V59
	G2evJ3vz8DdAv3iZLzuSIaI/ZN/XSc8Acc/3jtrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655684819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M7csYxMsruhfauEflGtUbOEL5VEOIQQQPo3eKimzyVc=;
	b=Z83oyGsto1me0V3qUT91pEcT4cM8GhSNW+MeIhP+PjS5Hm6kWjseWdRg3Cm/fj5f
	Hkc6iCz68o+LBCteVi0zvfm17ypIBuJIzSwl/+TdX2pbPPgd/AN29dhXYVJscusIZEZ
	jOWK+nliWv+LOfFR7yL8B7MuBXKnhO47yyDF1tzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817e816954-687ba5cf-b7d7-4d26-833b-86e3befe27a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 527fe18d632a5e3393448255fcb8e6053d42eb571ec44c0324d72aeb83718e87
Date: Mon, 20 Jun 2022 00:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655684819
