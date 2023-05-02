Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4702D945F
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4A2C4339C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683058026;
	bh=sq0ADBiFPnuF8JvaoVPnD8wAFx/K2I8GlxpVRuXxVhA=;
	h=To:Subject:From:Date:From;
	b=dbsqIcj0sza3l0R4ICb9evO9gh2NXb2Niyd37OOeXu2OpMV0fydg/jZnj71rLdcgc
	 B0ofHng+bh0WZmpl6iBJactkaY7vhld5AD8I5+VzwL3JWZ8t/SQmhh5IO3rRHMLBLH
	 23dAIEQ73vxUi2EERK78kt4KlaWkY6nWYWBkWXMXe1jLBNCgdC1kRCg0BVoJzJaaHf
	 x3/ksHKUkyE+zzXdLDfFK/HIUeNJegND1oe+ju2gLTUET9IciNdpokvSMOLar8gQtn
	 ZVKJ8viiAZ+QxkbJuuh7q54BvvXgm9tXzMBOBJh7mD6TvYSuARBVWFYeIXV5LFT+ji
	 GxHUi9Ik2EcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA446C77B78
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 20:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168305802581.31195.683676313441081770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011900e5731b4d4ed288147d8e6805039835a48b4ec7b9e4b2239ffcf628ced4
Date: Tue, 02 May 2023 20:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683058025
