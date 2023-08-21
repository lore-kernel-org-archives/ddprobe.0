Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D758BE1
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB28FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692634448;
	bh=rjeu5oTw6rr5QZ8pmseXqAtPFLXRpY+PkCCWtAlPKE8=;
	h=To:Subject:From:Date:From;
	b=Z8Ln0iJUq4Ma3EqcokG1NtovR5q51K5wgYmoJ/STBNqcXzbj8lJSxiF9tKDKWNQDy
	 +OW3t6Bo7gXlwwCnNJs4Y9ug8DPH/okJaGTMW8iZ++7paAM3iHyT0w071Dj2vm0KLc
	 MWekiT/zSpVeebWJTfebmqlOdbkMnrcYcgPmGFCz3Tr5BXAZSzebImVkIS8EFPA95T
	 qwThjdlGTi7QFriYciV5plw+cZ+FQdgLrRad865jYZ2w0yLMirvLteZSCn815UMuHy
	 QCj4dFgRNEoavMXyngMDrXZAdFlCDlvNUo8ttrlSrwf6L2uQgoSapn8eTtamgHpuUX
	 3SZpfHCLEswUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2881EE49A6
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169263444871.517.17856419680685871951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10e000c50fef650802ebd6ec0539faf3b102749b46ed16db689fc14475ea49f
Date: Mon, 21 Aug 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692634448
