Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B54C19E
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC75AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681123325;
	bh=jiJWgsJUNRt40i3e/LU8VpGhLbSAftN3GidsSBwuzuk=;
	h=To:Subject:From:Date:From;
	b=ZvaZzkfEG803YZSfj+6fvTb7hTgFMmrO+2TV67s+X/RGjMORgUgl86hfirFc2BKwS
	 BQZH5w82guvVnWkGstNUk9EW+zr4CucEbzlS1AXl1httNT/naIlrPWovGSmR91rAzq
	 x+0Fpr0GZJ7Wq+snwDhJo4CfgHY1tv7/gbmAfMs3JJNYIMmkGc36LIqXkKckfnKgDa
	 ODls1yQ2FrnrMuPGohtxjtlFivbIWJ4S7V/5aElC3JcX+cDoy58XkeRtfqpqhGaW8A
	 LMGpNZ4ICd6Hp5HHjR8KmKDOa2pTH+BSEiI53soQSAenX+hNR9jXN7SXBqo/QwSizV
	 O8JnzaaVsNg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B93D1C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168112332574.25117.15248272903671028890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4eeba0f74487519712d3cab80a9ec902e15f4e1be12b80a83fa153468e1a7b
Date: Mon, 10 Apr 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681123325
