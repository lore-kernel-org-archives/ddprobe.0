Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8559615A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E36C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689655868;
	bh=G4ADMjaPaVVBVvQj81QVYhDS1pHr+ybavf7l1567XYs=;
	h=To:Subject:From:Date:From;
	b=tozBiozrco70jqFjJvzqn6WGO/UNfG8PbqRYYXsN63xXNEarL11I1Krmjta01D3ms
	 L570DASklJagz0tPW32ElmBUo+3ZZWpX8PCWq3PqYdyv33L2XZe9wYIrNlTR1/dLyO
	 MtdcsAUmV37JeMXNRP73xA72/cT+Kid7f0pb3sfiGtn+jrO8USTuRf2lQIs1adIu2p
	 tFANttgrdg6d/DsINDC8L/2NAgse8Cydnp+sIdakSzjDTIPuOudNBEJXWtYE74Z+oH
	 EWNPmK0ByaZY0HxID4JdVDx5eRoiqXF6wrB7z7MH0nNk/c1fMHvpIWASgj+J1M1wBo
	 J/7Nsc41Ul72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E79EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 04:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168965586871.17113.2805436715406397817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635416a8830a24ed91c7720a5a1ac2e175002533492db16acb4f44ff5f1516ec
Date: Tue, 18 Jul 2023 04:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689655868
