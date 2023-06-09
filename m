Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D11763D5
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2E0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686294906;
	bh=qTKVT1ZH/Ka/c4+iQQmS2WRvSKcrsOa/BpnFEQw21OI=;
	h=To:Subject:From:Date:From;
	b=ayIdDOftKGtvBb/eAF7zzR5IETzpMlcvHIFfC1RJ3z1/qr/KjKGZXD45j62vDNcDu
	 DFvVOvqZ8kN48BxxgNv4hMFR4Zh8UrO5TuF9e/kaE0TRNTWMezzDLsIf8n/4t9jRFP
	 bU5Ojw8AtyoRohZkKtz1VQZ2vxw6lk0xtbVb1bmwQf9usaj8jSoaUXRnGo8mhXYKbv
	 Ha+fDFL1Hdrcp3VYL3Wbh36yXRQ0MHp2NNKuqeAnumwb7mdU+/TD36tyuge3TKmCls
	 SA+1cfhperLgJBBaiWTq7VtLDsRa1SwzShLSOsRmYMlWWre8DNUWdl5GW2kugV1+1O
	 CyQUQKx9ZryIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A87C7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 07:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168629490579.1334.10018159509004185632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f188b728aaa536df4a5839f9e76be74009095326b4cde6c7f39edcf0dffca8
Date: Fri, 09 Jun 2023 07:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686294905
