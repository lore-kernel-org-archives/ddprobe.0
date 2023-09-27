Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766961170C
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 10:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C582FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 10:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695811568;
	bh=J5dge3t/2RctYQnvQtAe6UOntHNcdZYRP95Q7Yh/MaU=;
	h=To:Subject:From:Date:From;
	b=HmwHiZVuFc6jj+L7t0MjR+kTogS2zCjnZPp+MB927DvGqFJnASEp6DT4jPRDAw33X
	 hz+wjOuQUbgNYM8DeYYt/Hxeu7jClJUD8xJw9DvmEJXdbFV3jQeJnUEldIsv32tQ62
	 xWL7ueadhPbA095jsTImV8SmtV+BxSQTCEPw+yMWsNrmbgIhrQYlO0ONR9bzbm1Ftg
	 Ee4zyXBg29XEaTMeu6iVOHa6JXhgoTedkhPgOtsYVSDDpv3XzsAm+3SIPpgq/1XV6D
	 H+e9/hBluxBimvHfcwF+BpgI5fWLgvWWJkmFsfHh6TgjR4Y7COwAifq2UGWwyaFSlo
	 Sj2+60CTpS8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C00E810C2
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 10:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169581156866.25656.1471527055751086545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda4d45e0e7b934f5410cd770bccb3a7a2b05a7858f61925fb1d62b025be2295
Date: Wed, 27 Sep 2023 10:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695811568
