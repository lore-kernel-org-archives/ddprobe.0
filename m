Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E5B17741
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 15307C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686318966;
	bh=+aCpWM+9ptpRNJXiQ5lt5pXWnimaIWZ9orU29Xx1MNM=;
	h=To:Subject:From:Date:From;
	b=hW5JSlb+yPak1Olj740j/CFU4dcpz3gpFOz4T4Pmt2pODpEQ/4wGm+a9lCerpvXaQ
	 C/eTmEmJ0JuMsfhQATL7O3NhJoBm7SN3ESACndGK0QB927En3CvIaee8klEgybAksK
	 DB+CcSVVB/4v2IxKYwLvcB7BG5Ff7ICSJuik9z4vHfUZWrHWOXdAEb/TM6xqIBfCIk
	 tNGsIkhNZjBh3frrjh4bwl+nWIQ//yl2YIYrKa3kED4/Lfsup+CfIIfoysT0UunRCs
	 7CFm+vldEUh+eLvZcvP1orijXtFcBPF7qrH3a/7U0qBBn6PgIyj8mGqPobjEPNTnWG
	 7rFVyWzDar4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB7CBC7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 13:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168631896588.13595.12107013972958967232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dbbb0cac134fbeef2acd0157ee6ec9633bbbeb980dd8b39fa927d6d01f161b7
Date: Fri, 09 Jun 2023 13:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686318965
