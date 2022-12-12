Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CBE6FD9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BF4C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670880087;
	bh=2hZ2ayLLmWEq5Py+MIx4RQGSPQ5YSbTjHdxwaC2rfKw=;
	h=To:Subject:From:Date:From;
	b=MqflHLRxCnEYIPhNbhaXGkAn5FiD1RhHAShPuyFYCp4ipGq9ctkgpmSAwCyVQ4JwO
	 GnWc2ix0NKodg8J08odABb/rLxEcV7J9ot53Hl8Ic4IVLdWYAheobLzuUElHHbJrUb
	 S8wSnzhB/b/lxVcS3dEa8r4N464XThiTiNXbnTQk7oa1L9wgSZxZM/i6oXRg8tHI8z
	 j9GxH2JP5vT/O68S68pvn0y/hHjFyjENwQa2WfdHiHtHe4lfFmmpKo5pX2lFmIKx1W
	 tWfVBSsgyQK5B8qGnRHUsdUyuYWWPdzumUOy1b8NPkV0vV2zgwTptyJMvqMPyCo6Ee
	 aMe5HjnjBuIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5F1C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088008738.9017.14350446476778298451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33315f4d9a3c80c33da41387ce836098d105def027b60db0baeada164ba575b1
Date: Mon, 12 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670880087
