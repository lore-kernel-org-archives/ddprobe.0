Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5470D1D54C
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKBi+2TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA427C433C8
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697225228;
	bh=H7RX+KYScbiCDafzaqOAUcvWcFklUsQX9PWIiiKEl4M=;
	h=To:Subject:From:Date:From;
	b=kKBi+2TB/RJBEsFXLaIGpbsjo20Az0bY28eXmZOCtEuftUXaQf/xpwWcIH/j+fSsW
	 FrQWUUXhQDj96VtqXSD0QvoUb9cjukzh63o+5LRoIz6FrgJ2Vq6yH+MLuyd6RT9gG0
	 RNnqd1yf1TrOi610UsGPOGQDu12qf6pxqSH3gLsc7fTrjso+orXXrQqcM+JUCUTx3I
	 JE2q7xHRaCzU98YlUxq6Uxjr0EgeCxytRSAVHzAWUessEh0h+Hj8dpKM5PJmHhzcH7
	 3pgHgI9/ERemVHNOOEvORY77kRDT2Z4obO1ovnpROSS7R+DG2U6/V3sts4Rc3Han3/
	 p//1vpsjTwVWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7FCCDB482
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 19:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169722522870.18701.2856528190700789818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cfe1366e0c97f81378f7f6ff38a650716989fda291579441119d07d57efbca
Date: Fri, 13 Oct 2023 19:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697225228
