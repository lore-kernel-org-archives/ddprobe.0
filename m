Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247A06FB2
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 09:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A98C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 09:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687772589;
	bh=AhPCA8AUW5Lqo+i/uzdo+oEHZ5nZY4zunsD/qcqdOmk=;
	h=To:Subject:From:Date:From;
	b=h/MLHEmf8//utRgt5tCKvWjsUC6fR4ihyWfXZVKdog37e1Fj0G8xCJdl6Y+ba5iE7
	 /Emlj4ktf+Emf2fE6bK3PLe1uLeL57VQxoFRxdyifJjTJ/QhX5pqgq6h+qKUGNXKZr
	 YRAE9I8iiUgFKNdut/rSMoOSTW57IsNHUAwPIuOLpGFiWJdxmlty50YEXcDU1yN8xt
	 /UjO8wQlsAx+KgPOS5f9qsMCX8n4IU0loxttwMnaCTwGDpW1Ic4AfvDumgUU8Ihkt6
	 CuYq7WMAcz0eqg3Zydemb5Dxxm1myUV/DMsHdlJfkTr5NkK9xu0Ro46eldpoIgn5QE
	 IggVmMvFSKTQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB4BEB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 09:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168777258876.13247.12322149361081662260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90329f72ed4a6eb723585d3c8709b9c2b812fdac1074ec24c956e867d3d85388
Date: Mon, 26 Jun 2023 09:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687772588
