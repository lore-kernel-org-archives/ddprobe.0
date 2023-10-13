Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51053101DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYSU21U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0FEC433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697190428;
	bh=cN0igDFM9S/ZSTftJZ5M01xcSr8SuFcMCu2GV8MGVyM=;
	h=To:Subject:From:Date:From;
	b=rYSU21U2wVJosC8t0osOkfuyys0wUDAGmHq8/a1JPfoK/PsOC7SDI/dq/SjyDnmRt
	 MJXPODWAevqd+SI1IM9Juiu038JtfECiwyqHvm0aTLYMb4ubk99u2fDTcK2v2rWeow
	 aJCtf92mc+0THAdaGJdGSFv4wgamkNTlhdBPbGylg+qQ2pxfKJaXkCdQ/d9CKqGdj4
	 7MXh+RrKMfHX29p7mqxoBNg1iXZ0sTLoN5KK4otI1d1mCL5SwNxHsIqVNW231NmhH3
	 t9fkyQMkTFVJ48pdoTrtklzA15f0FjX+5OUejofvz2YcXHUdpkGuBo6GHKr4HXs/9z
	 Z5KSoec51YzWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1063CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 09:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169719042871.31707.14919979080182163546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 730afa0f57ba861470f7e6e376fbc8b0c4ee72e86bad2c453aae11ea5e07b1bb
Date: Fri, 13 Oct 2023 09:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697190428
