Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E34C1DA3F
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/SxU6aB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FAF8C433C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697814496;
	bh=ePHH4vac2RNVqrGwHIdrCoZ2PGTbgDEcsDXpNDtGUP4=;
	h=To:Subject:From:Date:From;
	b=Z/SxU6aBnYvCq+GI8GCLCaM00HrynCJSVeAcFYkcJw9/WVlK1X8WpCMa3eySoNxR7
	 /8miaBSSlFZ+2B4q8YHvhGMOLXBC/5eOe0CEShR8eSvkQNqvQj1h40J/txNpAEavL7
	 X+cBIvD6tq82c8R1uWiI41yzk2mxWpvZeIBu0NPxfpoHp5fjj+03H8gGcW3fXueN/K
	 0uQ8YaD93gSyB5vdXocsWWhg8/CcJqYdqi5ndzSL2KAkwSjQIJsanSMEKKpXLjyMnh
	 hVofcYaVWZJYLcZ8oDuSaFqRfWFg52mMEoyfWkrvtnJnFW08f7RVLJ4pf4mplQCO2G
	 yI6V+Ul6BvL4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF4DC0032E
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 15:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169781449644.6474.17796422540989582202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4437259f410afc0d0887c4e4367a3e2dc079da09ec9e34d2575181b8164e68b5
Date: Fri, 20 Oct 2023 15:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697814496
