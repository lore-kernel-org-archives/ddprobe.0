Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D059C15A6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA1DC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667780454;
	bh=D9UnPEoBOTWggNRJDjAk6hzceqI6ygvIFpAGqZz+I64=;
	h=To:Subject:From:Date:From;
	b=LJW4o8NcRhJYPKeo5Dq+z2w8mcezSWcKVHlD6e2uQrYqkEXxMrHqC31jzkdb55QOm
	 vIDrr3Hu7X5VJEX2iMcf6YsqqBWPhkYlRmzGT8+HCXLJxy0iR/PHKBUUSGRZ+//6o1
	 W+CCznhJ9GqWabkrzrcD6EarktTnl6C5YgiMF2cpvTEmMdcY1sLA87XmlgUEiEPhQv
	 ZAPqOV7hU4lG4H9sFpLit3yTztyKpX74jZMtTxHglVjiHcJHMIOAjRmOkX5pQbrVXj
	 AHP0rmcX3joWsNOUWVq1FCYOwNtesSXrkE+8Xkx8AWhXVSwxRA/eIk/IMGcEWZnQPm
	 tHMshpGToq7uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50154C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778045432.8832.1269672458948095480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9ccea3c530f96fbdbc2b8828a5d4e1993d2eaf240ec7e42b8069fc0cae6df8
Date: Mon, 07 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667780454
