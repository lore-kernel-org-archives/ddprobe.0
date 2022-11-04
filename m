Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA10A47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CF0C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667526054;
	bh=XGhuvNRrhFrEoGPSyG6LJfxDn1niRiSmvro9GgjxnFo=;
	h=To:Subject:From:Date:From;
	b=QKflqwjcf5VmIpnQlFgjbCFbUdlFyOzYiBRTpup9VExolknJWvwBNw2vlYTXc5jbC
	 CXlcIuckcf5oOTD5jygmdS339e3fJOqLUmkAvdn9EF4JmYJ/ICgdAHUpY32nEbB43n
	 6acm+sZT/K0TuCR9Vi7xkbXaCkfXyvI+UBOZh4U18NdU3yAEfSAaX898ODXM2bw1mp
	 GXIJ/DyaEb4ipIri6Xh/eb0ecC9n+iwvwPV73d0JkzxEWN025UnALCVSlu/eT/vGvI
	 cfQZvEymrl5bFuaBPeWyq398iR9C/vDU404aG/HmwWFdGRITrqysNDF8JXCgUS/3Kg
	 3teYjxAw4U1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54291C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752605433.32187.9844524936418945489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4aaad4decd44ecf6cd5aaa19d3dfc272ea27defde1dff53dc792e0c0e311bfd
Date: Fri, 04 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667526054
