Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C17F52564
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D6C7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665480653;
	bh=qQD7cHBeH1WdtZPgLVbxr+Mne1NzDjM2PnC4cCy72rM=;
	h=To:Subject:From:Date:From;
	b=Qyn2UlWMYM7rruBu+GfUmIvaHhQNcam4RpTSrDg9U+xkh6fH3nX8CUAo0O4cSR3me
	 rEie/3iLFYiAnVfAyGxGuzXnBnnxH9T69/NFKB6L9sgxaC0bId4BFKL1xmnehtJTGc
	 n8T7L2uPfHUj6H9sOzAG0c7TZk2+8hiv1g7pi+AfYdTwLL+6jG2LW0EdRhvbdhSTA2
	 IKKYbTpT6Q4hHHxg1bxk3PCofhWBjqkCwYBcw5M67K3AbSfHf7Iu2QtqZSz7eBVydG
	 rA8IT3SG7zNIHu1WZVZcs2Cr0ivOUTCJMIDWN4QA+nt2SRrxuhRt4VJ5P4eBYc1AQ/
	 VrQ7PaFdtdKig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52EADC433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166548065333.9341.17640417491299213682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b923df684f5ae6a956b04c7d03eebc8230e037935323be82bc7767213839935
Date: Tue, 11 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665480653
