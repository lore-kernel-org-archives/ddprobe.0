Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAE4179
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F8EC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669508454;
	bh=e0QMCZCE71os+JW4cc2VRWyk3hfPtUiLzg+sL6qH+Ec=;
	h=To:Subject:From:Date:From;
	b=UMxjI7OoMV5T3otsz1soDCByzxYZs/I3wZwizL19TenqlR2gLBJeqQEsmrcDJs1Yz
	 8zK4SWRMzZ4H/XBy7lH6k27KxVZZysacDGNazD5V8DOfKOUhaGgSMW9FK2GCz4b16I
	 VAx2A5JrezmhxiYvWdbGVkw7AfobtlIYP1RwOgJxfunZ5MaEq58iJ3MaudWz19mUea
	 Zy8eZiqhErQh9aRs67CDeAiBgPfZcf1k+t3wgt4JthxiFlswK0TUo9tVplSF+daRA6
	 oDzryTrwmovis1tgEFH/9d7RP0tiExV78sVjmYdibDOMy2/kP2CofXP9GLpCyGi8Xy
	 gFtxL8qEvOHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 599D6C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950845434.8969.10073308285445894482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78d514aaf94b5b260b1bd03ad47cf5ea53975043f7b426efe62703a39229f197
Date: Sun, 27 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669508454
