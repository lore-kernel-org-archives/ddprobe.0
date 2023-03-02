Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4DB10FA
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91BFC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677782765;
	bh=siHE/lOvzR4yaowR+j8jWA+kMkK5HVeemRgrVwhy6pQ=;
	h=To:Subject:From:Date:From;
	b=JVPiKynCDyy3XqDEz7nc1GIatevKWA8b0qXs8c+OpNbC1oW5k5iIM5vTC6y7D35zJ
	 kI1bTqTV+CjrEtQO4PeYSNR7bWyuTeRN86pBBgsQVyhWdVzhexGxX4f/cJEvmUzmnh
	 ojzFXAVJIlKyM53pYh8SJqBs0M2cBgSwTVHpoYGUvchgforrSIw5CUe6DgcQUdzjBo
	 /WLI52/5SD0EcCmljsLUWsEFCFzP89A0to4UIg8UheU/Zm7d7uDFwMca7jvCx1xQF8
	 aoHlLM8cSKUc8cpkX8OFM6dRRwvbznen3EGlElBXbb0VXrdmRnYBMA2cx5uEdoDZc/
	 w0xrR3negtlrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA34CC678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 18:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167778276575.14123.9263506829781278192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c61d9a5cbe142c75bfc426de6513dd414610845183aec16b76e713f679a897f8
Date: Thu, 02 Mar 2023 18:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677782765
