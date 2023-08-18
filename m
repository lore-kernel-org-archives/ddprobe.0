Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741A917AC1
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED3ACC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692366249;
	bh=2qinIMAU/mZQLCeHc72qemwg20rL29TUIrqNn3cDdvA=;
	h=To:Subject:From:Date:From;
	b=pCtYg8h1OVMbvj2ldz4G/oOia6u7tfDU+esftX68CaqTWBZC2GWlekCM0a3ToAJzN
	 KGoG5cEa3lutdjmNsH3DdmYrYS3exJ3jIStXRzeex+csGIwTaceRuErbKLTCCTdRC4
	 7zVDbF7PGqcrvXXxAGxbVCapyWtZw2+jBQpEXGg4eQXFIlZfCimV15ejwccx8H+g9f
	 KmYrbebGOXe80nNBXT9fAnWLUrZ/pkDui0GfoH5c/PtOrHTC+RW7pAr3mJbDlOrBcH
	 OFgLUpCtBk98S8VEiI3M51p8cq4uifE9dCIrZclU6hvVR9i4Ki1iAQrqfF6OFMSZjB
	 YDDtj9lFG3tJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B61C71149
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 13:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169236624878.22019.8396462428439801017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999dd8b23e1c4f4aeb4668f5524b2a6d5e790a7dc6fb71f9f61f0cf8b6a02dfa
Date: Fri, 18 Aug 2023 13:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692366248
