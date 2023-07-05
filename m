Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE797F
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEA3C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688515568;
	bh=fcMnOH6rr/vwGXyIXY3i92A4ULD5JDaZRGm+RdZAgX0=;
	h=To:Subject:From:Date:From;
	b=pSgQRY3PTOZHYReeXRE2kSEkqo7tIoaf44JRpedNklB6ePsSKIituv2xp4oVzjWtF
	 mBKhHoTAsQ1QyLpt5XTb9utafgp+NjOJNSozrAMpQdmO2aLBRI7lBpa0ugftP2ab4Y
	 Fd6fmfVd6G8d6kUqVfsiBnk1QxH1OO94qEKn6Y8KTKF+4BVUkxKaJZLxUTRGRE/wMD
	 wy1VlXqECdCtTJXQBNLr6nTBPrZZGvmCEKceTOCHDArfz3Gjd6tsMjrWWXgPRcjkVp
	 rsVSW6L4giRiPnFDf7SRSbFQL3CkxrQU/QwWfVrpeOXZkhtIZIMbEyCFyelcpnqezc
	 SKIxvbaIYEZQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C279CEB64D9
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 00:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168851556877.19521.8545748055620419709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac3d094d846fe10f04bfbbef42e9d321568325c01724082e7d2fbaf66a5d7e3
Date: Wed, 05 Jul 2023 00:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688515568
