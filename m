Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B0EDA
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7BCC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676023445;
	bh=XtuNv4DcUnVtmKS38XR2gKZgb/aceOzNCT6jRzGSVnI=;
	h=To:Subject:From:Date:From;
	b=gAstg8xFq4ORE69d26DElpSzAfQDRNO3MTU38w+HkcC87RHf8EqP+onHO89wjPB89
	 23vbxQJKK7Oyc4Bt46qw/JtmK8ZdrbU9bPdjWdKQ7tECNB13C07t3fD82BePkxaOtZ
	 yOkW0AV1IEpOsdYn+CMk+MsYvCVXEOeCGSI3zRYJCvRo4W+d8g/Ijv/Cy5hB8ToMGd
	 9nVK19pGZkGW1mqKGeiCsaFhfO1eAqALgfkpxUajC+y15BMAf9WP2kEBNvqrhGFNpV
	 XkmEF/wQ4SeCBEaEtDat17DYF6Oursr4EWlwp84vdAQvA/ibvzdiArxL4s2pHtM4KK
	 BftSjAiam17/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDCAC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602344576.1280.11990488224266657517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb56f058f708a319f431bf3c8496f6c76b340689888e2ebf93e44e4d786e982
Date: Fri, 10 Feb 2023 10:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676023445
