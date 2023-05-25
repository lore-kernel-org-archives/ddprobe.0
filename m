Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45652A94D
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E314DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685010905;
	bh=Li3cFKO3AGk2LigFSHJrNYtlfhAGSIHq/FgrfO4hFig=;
	h=To:Subject:From:Date:From;
	b=AKp+w4sLVvs4yYHBGzunK9bzX3nNwrwuH/FmBOMMcvm/kdduhEROCS3/mZ5vPeyDn
	 nxHjdJb7g08mgLtzA0wtNxfc5VxstrMjRWvFtgwCbRVzPUKgSfaE1Mx0F/bbIbvbHD
	 LseyEyLxATkxynFVXEopMhQEyeCjyHVhsIbV8irsUl5dO5fTNKdA06pcQgiUAB21ph
	 3Kof53ZRekavaiShTn+pISISG8+01PIKJyIZhM9+YlqpLfGkKuMUADdb4cLolBB1yi
	 +cBMC2LkY9YKgsQ5KS1wJgU7z49smn5YWPRMk337e1aqkgCAZs6RRBNUJ35yUd22jd
	 +070vEfgBtTBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5879C7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 10:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501090579.796.9699297059216734929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa301a6f30d0e431f5b3f4d80308cae0529e36563581513dddc74f3ae007e2d
Date: Thu, 25 May 2023 10:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685010905
