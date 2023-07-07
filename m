Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6DCC123
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9957C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688741228;
	bh=bp24LQuekHvJCKcXNnAX/mCmqtDl+TYw81XoMS+7mdk=;
	h=To:Subject:From:Date:From;
	b=scfevo+S9e2eNJZTWLVOrXwG1zLnscfjibhOXWkGl9VPjZ/ugCs4lO8BBjGXAZoNZ
	 TL2pLFkOY8ZQ4WwHV7ZQzRelM7kFL642iQjXWDIVvPUXRoKHIrmbViJYl220ECMFl4
	 sQUF2TxF3OEqauptETFM1eTRjILcsDdQNGtvjuFnlJTCBcATuB8GHCYp/VHi/lgKef
	 LFp7CYTfZd0hFXpaUGZpRt+IBtsS1kM++lUzgvccR/NUqLTbefXLPwfbL3sXes8FKJ
	 ebv40f4cZh+nM4ArOPJ8xU/1Z7Sni8JxpGsDhUsN+avAccr6+cuVVUooYtX23tTrkL
	 /MJT2poI8NtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC294EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 14:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874122875.13132.10852772855628395727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aba50e623ae5dee49b35ff6ccd6d7f457bb6b4fe7c1999105c66b395ffe4f92
Date: Fri, 07 Jul 2023 14:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688741228
