Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6927290F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C2DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665658253;
	bh=q8JkMHsC/fJCATSE6Flixy1NaO8kkO3/dlbAg+RDn5Y=;
	h=To:Subject:From:Date:From;
	b=n7ZvI8yzJX1uQ0MGJ+Eu/bJqbbEPMlhebVBmUOpLZqgbl3DdMOqrv9vBwAoAXtxwh
	 RY+or7pkdqWgF/KmFo7GskWIGZ6rXT8NuoyRIumBf4LVIMUir0uqe6CPeOweuS6VK6
	 WPqfxW78s9Ce1F+5zQ99oD/ySVSvUGODkTOYk9bFjg8vyCKwGJBiyxa9THYyVIeVkC
	 xI28/VPoKP45CafZsZmo1UT+ZO1bu5LCa4ZHMB+eMxSuQckI5diejvP4P0cSQqlsS7
	 aKyfRmLenA6/0sWKT5w5b5tMfcjntw3DciWHSaPV5cnJQ5dSY0woLYEOnlau9YR3ez
	 MU453byxxC11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54624C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166565825333.2018.2183612700424337380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3b3c21251cf9f237900a9ee34d3661be08508fad9ac5e03d3ab53bcb486198
Date: Thu, 13 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665658253
