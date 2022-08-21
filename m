Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28A36A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661047852;
	h=To:Subject:From:Message-Id:Date;
	bh=2ENIIXmKKAjr5H9RI1zvV2Iv+47MBlUbpOq07r/ldQc=;
	b=WKIS1l3dcDZc2Poa9sJwjgFN6i1sdZdUajb+HDvjWBzG3mpG5RAyhYsS5zdStSSe
	J4CQ1ZZs63v0/UGrVJJoHkL0dFG8YzGccp/APNMOjK2cJAMCpnHfWnLGSuXgT46T2mD
	DRSiCHwu72ZIRdyKz+OUOm0oUgTyI662wsVcRXYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661047852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ENIIXmKKAjr5H9RI1zvV2Iv+47MBlUbpOq07r/ldQc=;
	b=bC/exmK2fJ+3JdMSQy07UOL1z42ygACtnJkcU5Yoxvc/8YCvVVxVcUnD/Z13Lp0Q
	szwDzrxE8AoFfIpdzQAlj35Wl78XKQbRthx7TFJeVzxP7RUmbrqEqPS1HE5XzZLwgjm
	QT1t/dsOhgDUB94LfRdahz2BavRQTb/Msl1exR8A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be2ace33-d0c55287-a8e2-447d-a04d-3c70cb706183-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af84aa42cac7d3cbb2e86fbb34f6cee4e775b5ed65012155c510d494803d0a89
Date: Sun, 21 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661047852
