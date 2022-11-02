Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6972F36
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F32C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667417454;
	bh=oDw/w79aO/NrPbQ0Md+SuzsjO7R9FIPW1Fu0213GzFA=;
	h=To:Subject:From:Date:From;
	b=uqRop5IhF18QFITSyT+nQDY8mW8BI7NCBkRnf7ewnwOhkuNWtlbW1W+7sklH2y72E
	 iY3QwFdJ472M7pSiLSLdPwx2sxEaQdDXdGHkXiPdE0RnYGCfzqoq2IAU6eDkGtkvHm
	 1eZ2cDL/ideDOBSmmC7MLePmyTMfumY/rGlXbt/vVZmTmdLZ5q2QiZdFHR6vLOeWtx
	 s7kFYN8Ne46oyosnnr8NqXgZao1GMCkc1wkEp4+7gbgueS4guj0mNP8Htnfl8mpJsA
	 AfEXF369WRsmAaAIJSTPgigSneSw3VZwaj9luMkivcxAOG8t/z941ueEb2Ajd3Vz/z
	 l3aB5PaJJ5hdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57633C433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166741745434.27546.9492879740284665119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3773c4c80ca2fd0e08cbccee5d9693e0c82b877a604f50cf2f3ef90f97381f76
Date: Wed, 02 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667417454
