Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DAF1E4B8
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuM3pjub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1A0C433C9
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701947296;
	bh=XVZwTgjBqRNBHMvxAfAkeF61ALVoiFjZlCcTLR4X0zA=;
	h=To:Subject:From:Date:From;
	b=fuM3pjubzLjLjYttnl9hxvcSlbaNdlQhmrEJrDJJk7h5S3Bwg5tqnk7mI5/2WF+No
	 AVJ8NVBG9rGf8126ebjfxa1ODrVO65o2dotYT74uMTrxweN5DUmUbwYukA2+S07zDr
	 js+w9Ntbr4tevKc5aQaeE6aFvvo+Czrws5iWWtfApRhFQ0TpZYsz9tFjPIecezr5gv
	 uJ0GzedcrnCCeA0njIZszyEoUuD3ZYYtSawiRWue5cBwWWuZNmukSrvmGbw8sVrWfg
	 cwa5xjWHUA9YBgylps7VubLsnjo5KNFciKuzJw+AQW7VfIbqARMDEFT0ulyZ/eQaIL
	 al+ltuHn2tPFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6CDC4167B
	for <ddprobe@lists.linux.dev>; Thu,  7 Dec 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170194729637.1948.9485031927359237865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12caf68ebde7075318b9dc0cd94a5b7b7c7410683093e23bde073d8ed0d790d
Date: Thu, 07 Dec 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701947296
