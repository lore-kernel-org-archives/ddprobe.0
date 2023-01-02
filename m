Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D2D5667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECAAC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672679487;
	bh=M4TI6o66kOGmuoZXMJGCf14BH7g4E/vmEEew8tk7CKw=;
	h=To:Subject:From:Date:From;
	b=O6UdAjy9tfYfntRU5sPobsfDsJiE890K66c9o42weY489ZW+8ZUlPsbDfyEDvVxIh
	 T/5nI45DxrGTIkBNOkjZ3Sw0nnzF45OolkSEqGtyO8yZlbk19dil4jAP0Kj2b1J2D5
	 hHlfLA54wR1pmbK6aEAllYppvlsdFAN2FLruJO442UrMMW7z41SMlg3wW3aoEoQWyQ
	 84fflGIwe/zEYYCGhXaTbYJD/NWJzH7j5hbvRnmCPQPKe/z33mB2VKclEZD+D0XTSN
	 lduQObxoAQ6bB+Ckx3vd/J18G4votAXrY9X4baKWI7bEDh0u42X9L4zhznoJLvNkXc
	 R33B4D1nIbSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC6BC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267948737.23990.9850419630704087702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14703fe933cda5928ec9ad3682fc62cbd376d0bdd50b682fa553543f8cdae0d
Date: Mon, 02 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672679487
