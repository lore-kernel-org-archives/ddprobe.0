Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEC8A637
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85022C433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672812687;
	bh=i0Km2hQVmEJjWwVZ9UdbNyNKmeUTcyTGFnTlf3yqlSo=;
	h=To:Subject:From:Date:From;
	b=MK3+9iI7aHqmdyStfq3RhvgJ1WDmkpF708+/7EG/39kCwXkWZ+viXFeYsyqJXNQVS
	 USD9hyTm/pLnF7myslisRXNFCy5+e60fIcOLLpBO9UI9ol30oiy8+NV1cteDaTGFOS
	 DslYmlVNcoF5PHBfvh/cfyF3UEoPiZgRCxThQpKSxnfh13d6Xnwp6eOf6Z/JeAfJ/M
	 KWX6PIKPff1QoPxVi4K1DS/AvmVDesKlz7MbLl2zoSeXzVaVFFTcDeAJoSJLgOc/Rz
	 4+8oL8w333a/Xb7tjTEgndAN54kJbT/QPMAtb8MnHRDIRfsCDg11xViW2le2+uM/kV
	 vzfpDIppxhXPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D555C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281268744.22743.9944096161729022291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03067d4a53151c50f9d018ff8e7e8901c9eda3cdcfac49d8904ddcf9f05231eb
Date: Wed, 04 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672812687
