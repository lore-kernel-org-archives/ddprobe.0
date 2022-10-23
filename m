Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C10364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7158EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666486853;
	bh=E841lcn5prf0RKt39n9Zm7+J0KsrxZ8nm2JbXhlAOR4=;
	h=To:Subject:From:Date:From;
	b=Dp3SaAsf7IOQ2wrlxsSu8dJMXqx6qh7b11f3rDHGg5oicc0fL3UPWuIPQBUZcXjjO
	 E4IEav5l5BAUSoPTHwMJUn2ManRB4lW1jUExMV7KhAAqv9Qwsa8CgHFJ/bCoIOScRS
	 VcmqQnDAcmeDBQTyPXqYcK804sLMlEndRoRcmT3PHh/qx6lIa6omrWUX7htyiNNnCQ
	 eO7oRPqtAPe+WnOmbi2865wa1t43MgCyA+M+BJGCL+lyLCT7k7ECEKq6+BH1DxCZNH
	 yuK5uThg5KtcS2YAb2NWVSo13F7N7ova46dbcJx4CbUCkZ0tFKVICsh4MnLYfhScfW
	 XbwdvQNyHflRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53E7CC433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166648685333.4289.16362587936552940273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4989f8eedbc05fbbbc1f9517545f9f37c58838bd5cdcb1b0a4dc7cac0a4f31e7
Date: Sun, 23 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666486853
