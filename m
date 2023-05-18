Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42548125A5
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BD6C433EF
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684410965;
	bh=dQKtYIe2dWuPjG5cU8xYEJHXUCdMUpIniRfS2EmUDJ0=;
	h=To:Subject:From:Date:From;
	b=qa5eoxqsiq2DLkoDutR+xK0s0NF9UfmhgglN6iyhCQZmC9X1p4Z5tIP4ZwCRMaYPt
	 lGLVjBzGprYoIWGq3ZM9CnYkGtLstNm7SncdC/QzdiinLLdQEq0kQAolt+MyYWdEoL
	 0XiyYfko+wTdlszTGai8A++KztoKSQl8uRyqP4emu7T0AwxN7utOTYKYj+vl2JI86t
	 aeKGXOuebc5JrYRZEc6zLRBh5+pDISsvc7LbrRwj0fTiz8ndYIKBswSHUdCFfsRw+P
	 aa3gOCBeh6Fs/5OripEIdVz0LJmh39I/RM/NdnmqDFUPvVq+hvFm9gh6TxVa5V5jDU
	 RtKdkVfdYeNNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB567C7EE22
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168441096575.31606.9181337116339688052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80eb4902e20f930bc788d3176ac1c6e483b1f1dbcd4fb71c3915be30b5998994
Date: Thu, 18 May 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684410965
