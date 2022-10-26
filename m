Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C626810E0
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AC98C4347C
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666762853;
	bh=QXRW0p7bg6KTdyOpFgqwMxD3IN10BrPSZu2LEYbJ0io=;
	h=To:Subject:From:Date:From;
	b=lt9lg9CONUl/H+904OeJkPZEJXgAIBFCgJTrPtJeYCiPrnP1ug2F49m6Rn7KnwU6n
	 fv29d5Emi6m36uFoRva80GQOPT9blCpGvUHkmYjy3Ylkn6w3GDeEUt0Bblbx+MSpv0
	 Tz8mlrVUrKjc/3/hxb41+b0g8Fd7t4yXq+jcLgIX/V6aQ0yREC7l5qWueU+Q6l1P30
	 m+pdQ1w1UxbALAEeV2ol4/x6Ip8HXvjRxQ9MqSv4djIzPc+0OJw5ICtcPFQ0hj8deZ
	 R1fXsYmH8mf7Aamvc3jUbyZQSpuwTWgVTr0T4YM7ndAAONH8bBJkdyc76OcIoEu+Ra
	 M3M0xcrigZHHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5479EFA3740
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166676285333.20144.1099103775279016359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621d93529009b282d020f02365cd5dc5a0539952cd4e959abd8f56bfb514d324
Date: Wed, 26 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666762853
