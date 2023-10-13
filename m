Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1BF22EED
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDVarD+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3074C433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697225828;
	bh=z/zFY7lvQeq7rUo+6lLoEy0FfuTxAkfysJAB8nUD2y0=;
	h=To:Subject:From:Date:From;
	b=aDVarD+A4FVM00WavwKif1/YhZiXtFL4PxufrJopQbHOG37+nPEKPE6dq825p47qd
	 NRjr8lAB+uuSHWswbgt0fe7e+NNJnY2DO9VLitpNsGJqctZKcuXVz1C/z/tRGSlKPo
	 4VB9bK9xS9K2SJze/4F5ndqxW0cYfjxz5dNUwT/apzIY0EdLP4brFidrPHQwtTFKNq
	 I+kcJbk06ZW8KpCqwM24v3DNAwdpwxtcYXj4fTPTZzBR+fsjkcr9X9pftU8MBWuCP0
	 14oprD4Aa6b+OsZQJfT6kpYP6U9hnAIldzUDmA1A5tCNFJ1YM0m5nrPQtmMxL7FGRU
	 TTGoPf/DQ/1XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A56ECCDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722582865.5194.856997151723506601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3006c028b4478594a7bf57731c80a289b6033b4a43926f9cb27f678460e400
Date: Fri, 13 Oct 2023 19:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697225828
