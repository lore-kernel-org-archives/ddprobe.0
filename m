Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F6C6FD0
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72AAC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680788285;
	bh=NurCjoeOKZdHLH+vYeodw9BDIEiJKftZmo4Uz5THuVs=;
	h=To:Subject:From:Date:From;
	b=GBHmeg14C1jiyNRb+3b/+OuXmDhnnsNtTCTGN/1ZeYyru/u6cFCbYmszsXH7FR+VT
	 hLxRgRKpEjY9FFsVTyvdQdbm0HYjENJCy9+ZQxWuDL6oIjI0jFdW0NCA5YFojDmw9Y
	 HQXypH+TtNOAuXCsliVVoCQV3gBNW2mNZo6GKQtPZqe6K0gzj1WnRjmh4vI/bCBsxQ
	 vF+YAUo3ocrInzQ9DcCoV7+2QNwiJKzUtD3qmoY5XtZ7HCTLlKpEmC7wZnWcYQKTT6
	 J03o6zN9AdQ9CJ0vQwRkHCXBtbMya68Hd0o2pahW2sTBd2Amh3D+ZrtgHRtp/LQwST
	 zaiimf3e4oGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA49BC76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168078828581.20886.6498754113011695983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdcbcf4d5966e599f0a5f1b54bbd4491fc8206ee167c8b2e2c57ad575d551ef5
Date: Thu, 06 Apr 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680788285
