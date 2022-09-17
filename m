Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCFB365
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724F8C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663389653;
	bh=GIm9YSngyOocPRrm9m1yLZYppf92iXG2/9QxwvSq3Ls=;
	h=To:Subject:From:Date:From;
	b=PnX+o38gaJakX0URjROBeEdsg/Xpzy+VKicPHpa9I4JS5hsAbO6AvGNe3Ad/xDGSW
	 /jnXahCHiqY79uYJ2yttzyb59tD4GzhgC1SBegEQTcn7/tRJ9ksIT4HMdxIoJDqO1H
	 j6daTglz0xVSHtR6R5ix9XAzKM0mNZVc0CPVP/Q5asgDcPI06Yk1EIbAke18aVFcrv
	 8ysiJjimR7eFAuYF9NghTkz2EbMUNGScok4IYLFRnmFmNClOzmN5wGSNcVedVvojw/
	 ggF5EoNZiCgMzIsOEn6D3Z0Q4y/qPVC9yz/oxQKlEAITfDgM7nmgwUczlm1JabYT8I
	 xmwUF4kWOh6UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A5D1ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166338965333.14782.17754534172656635206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2d69ea64d84b65a46ea7865d0fd7d7c99dfcc83c79a33940e2352a76841b72
Date: Sat, 17 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663389653
