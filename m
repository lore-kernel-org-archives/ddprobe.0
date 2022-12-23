Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAD523A2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 837E9C433F1
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671783687;
	bh=KvTZFHwonQxHhs6RB4DyomnMBrXr9uGv823VZ+xJNho=;
	h=To:Subject:From:Date:From;
	b=dGhO++lzAfNkTjkNMmyEtcFDdzZptDGdL95hE8ip5MeWKM2twLvsbJsaK8lxKUAL+
	 8rX58BPL6mMXBBR99YtQ6RSnizC5Yy6yZ70ChDjq6T2vQFOsEw0U458b52FXbb80yg
	 sbuZO+kYUmIEJ9tJ/ElHY/6+MyyysVbIaPmN8eX5m4onuz5miSCBm35ic9CCyLYHoI
	 LsOMe++ClOKQeK/dzGSPlpoMcauwVFMNU71QLPBOdANg2z/nSnor2QnhsihrhfdZe/
	 nUujgm1hHZVOo0URaaXCWYpvzxgHRWVQr/XY7IIR+rn4pryV+fBMGlpcyDiYVIuWP+
	 2YYsfw8b6ffSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B5DC3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167178368741.15639.6670194375481559376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62f024afac727f7efa706229bfda1f5ce14db180d14728466f3a95574218a2a
Date: Fri, 23 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671783687
