Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7725110D
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 08:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655107799;
	h=To:Subject:From:Message-Id:Date;
	bh=HD831NxU2bNyPy7geOEPW/FninbofyNwNNxIxLnsfn8=;
	b=jnzNbddGktgoqX9OymoMpW5DvwEBgmAz51Dw/7VDFuRs9yXNeMalqKTOyZtpCTXg
	Z2v1nuid9wtfvG2646u5PQYR3ik7pgMHk2bpXXHvw8npMdwTRJR8Vj1NiJA7FDPR+W9
	TNNkP5/imBvPDuty1Flnvh4I2F9v6ZA7xRmIdrVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655107799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HD831NxU2bNyPy7geOEPW/FninbofyNwNNxIxLnsfn8=;
	b=dXHSxU6pu1ilN0vcAmepJJA6q9a3rqee5ItGTXwZUtyPf71yxFHBatjx9+TjruZH
	9NwafxR8wSBTetQCK5wEwd/cEqSvgy1l4GjXIeegmizEkSdaQUyPJZJnxeF2rc0r5VW
	HcztaWMqvf5yt3Mjqmmau0tfc3Ujk+xICrQdAbNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815c1cc8bd-a1f84e53-ddd4-479e-a152-72930b1234ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2048ac397fcb1e1be044c190a87f337a4b13830120866fca28180a9ce06fa3d
Date: Mon, 13 Jun 2022 08:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655107799
