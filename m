Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C41C06ABD
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742E2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669581654;
	bh=4YVpMDOSJK1BsoQou701UT0RnFlv/vBgmZp0AtdLKLM=;
	h=To:Subject:From:Date:From;
	b=MkQo03LLRu0yXSsrNEO+1UYLDLOhLFZk/zzu+/IHwwAM7PKWcchZwEPZ9PV0qnjcu
	 /howRzz0LlytmPPawezACzfh7wC5fuOiJ1bJ5e9xH1gA8ySfTLGXJRNFqvkrlShiZ5
	 WJdeRF9aqglb3USsTWFVEOiKUiv/yPzX3TcdifMrGVjdTAPyv49pbErHZWRUC6lVAw
	 KCZYpDsiL/l1uIR1N4Z1SUSOsENKdwWewVpOwCEEgSrr9Qdw720/FMGNjb1TRw03/A
	 RdAg120TnHI6DvlXrOY1kC/Ze/H080vIkCkVFNwN21iqGsErPyKUekjpjsFgnVGS5H
	 zwdkELmmFN1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59058C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958165434.1487.10055423152936962451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6235b7e1c464eb8cccbb8e8beeac4ddcd63e3fb9e12782d2846acaa63085d46f
Date: Sun, 27 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669581654
