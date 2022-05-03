Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E081C7F
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651567378;
	h=To:Subject:From:Message-Id:Date;
	bh=83t3jbUGAkWPMWC13FaFOnmiTRhWJ5X1Ilx3HbD/GSE=;
	b=DcpP5RFhAGP42OrZTnc/wdI2Mvr/LlN6ElJwgqM7Cf0HjoEoso+b9VzcXkHvNTw9
	3mcmA6fKqFY6bM1zvRZc8O7fdEI2bizMiO+QYDLhg7I4elq0OBNrVEQkfvxp+7E53QJ
	logMzEjfP7an/nzLyIxIhgbC0OLE+kmVM1rdHVls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651567378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=83t3jbUGAkWPMWC13FaFOnmiTRhWJ5X1Ilx3HbD/GSE=;
	b=dmNmnAeWEnwZ1MlUncrVheZoGFieW9lMw1U0PB7pHO6cLKTiEDv/IYz+1uKE5yRK
	92J2zI0AB+agg1h5jAcT/U97Y0jVzn1rgsLdakHr5s14bm5/HJVjBRtX9bU/Ze8meh8
	atDbF4281uc8Jjoxs+C6Pw9Lam5g8oNGPVwigrvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089163f43-ee5320c9-4546-492b-814b-ea26aafd498c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2187c32f0a90c900bbceac9bfd3e037c6e30918b749619d49eb426afcc62f6d5
Date: Tue, 3 May 2022 08:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651567378
