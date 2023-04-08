Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A51FB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4701C433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680973865;
	bh=VMfXAYC3oF+LiKvW2j4dZxJjkuvXRmZXb/kHDjcoDWM=;
	h=To:Subject:From:Date:From;
	b=VlQtMzbCglCEqJsVRacXdbOAlLjCEAmEgz2thKuNXArnofR0OL6JUCoKZFE8XDCw5
	 7i6kEBGdjT0yjk+CF8Ny6/A3TqZ7NE9Pq9vxHeAKR9oc6YjDmkXyDx7FLNQi7lLODj
	 zIqT4e38XUXwveWxsUKmwViLsMGdkvGGi05UYa49+UzUWxpVFEH+zndc8rwXOGtS/+
	 aU1iSyNKX/uTQvgUkgbSujOZd3NTiKxdla8pu65uSxqJNThrqLoT6yMhDsXef78HpT
	 Q+E84AZbyX2GeTpfKHzTACMze2kw0WZXyjABlQlRGzmN/iXjPzZ/Dm0pVz6jH9lPDH
	 z9o6VbxytNx/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3B8C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 17:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168097386575.5509.12910972905555105623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035f3dbaf9750d17a916ca081ccfbfcdc6f47eef0335978b6892a42ee65f0617
Date: Sat, 08 Apr 2023 17:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680973865
