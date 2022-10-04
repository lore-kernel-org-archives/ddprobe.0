Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A4617C2
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2A2C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664848253;
	bh=7bi9bigBCNyCubsdzvmrZDawdHPYd/b3AB9H2oBASE0=;
	h=To:Subject:From:Date:From;
	b=GdS3SALWu+GOWC6xQ62t2eAJc7FGRcqz6c8eqq1SHUJ36BUcpga5mGBhn69I8wZOf
	 oq8C8V5+23zicDmtwu9IZ21wFBawo4DTleNDAXUF3qAmKU5eIuoT51C6rIZlPGVNi9
	 v+TB+MZtFid0Ay/wprHPV4MM8e6Q4bn9GuaNJ4vcjI5FByGBWKYJ3NAyjaRp8H1Is7
	 jBmqwMAZShX1RUg6RYQ/NrcvBhq9HthD7eEpByP3PCLPxufn0uD+TePl4NJw6XdIr3
	 AlUnzAaDlavrbVJjMQRdbKd89E7VOZeS14Ys2jOh5MZvMyxi3bnHwPo4L/WJj1FO31
	 TMSoI0yD4+Q5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BC7C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166484825333.30327.6300347352340459725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e73415c7bfbf52e71371566b0bd906bff11ca1f64789b9fe5cb10d5926137d
Date: Tue, 04 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664848253
