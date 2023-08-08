Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FDE8F69
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55D3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691524988;
	bh=AeQQD/4kQQhXfn1VEKGZwzGUTKKinpdiXPkELPWErOY=;
	h=To:Subject:From:Date:From;
	b=ChtszQdSqcrk5vC/ZDDtUifptN2w+QOKkCutcDrGZsnYnbILDwkVRBs+bkuQjWtYD
	 J41kF6fojsPFwy3wkPN/9G2Qn3tVF53gi/3gxzXMivgYqaBTKs6gVnmByjUPB1rZLC
	 m6IXS3/uBuG+wnZQ/9CXSBy2b1FrH3CcbOQmmkaUgbVS3ZEznfEOy5x/bdtAovkqR2
	 b4Pw62Ds8US0kEjcyuoiXGbX/gtjo2a6/i2iD1Da/YUsn/sMiWPWA+fHbHAm6xX1rH
	 a2lvVGyBflnW/xyTltBanGMmN8rtAQMTgXQjTYDhacQX6EarxBNyAzS9I2lsTCP8w7
	 djtfXZ0zvI4gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B88FDC04A6A
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169152498874.22475.130195538558666885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4468e6d5fd4c4672a381ab30dd9411d7be4d149d3d2930f4e08ee871b8cd2b
Date: Tue, 08 Aug 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691524988
