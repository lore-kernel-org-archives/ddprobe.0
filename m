Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5050C10F2
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF854C433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688867228;
	bh=CDnCum8IOGvnjiHFRC/5mspxaGAXfzk3qsFJTOSYBh8=;
	h=To:Subject:From:Date:From;
	b=k79RKYhhaSFEch7y1t5faC6jJqT155h1n72MC0edH9sAqGs0mAczxSLmo+q7wX7s1
	 SODqvg2aOue4ZfE5QFZGiB/aTW2gme7jjbO47zlSFCw1b5gkqGlrdus0gMy6uHCDth
	 IuJfW8+zAvGqycptjnabIqKYTLsP+u0uZjo8gDqrg10lSJrvB4hdQsUIcPsa+Vd0C9
	 srEBAGTC5DZ/p7eBLkTleeEZTXAwqllg1N3tq3KjVwsIPZmW2yDuna3RIVhJZZTNiw
	 waOt+w2YjSYPI8OBCrhq0jXrcvIoLirs1evqe8cM42bQ4smZnacE8ly895jJqTLFhk
	 GE7HwmnmmbUMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD406EB64DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 01:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168886722870.19118.16765621254170204230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bcd2c774308bc485d0ffc9baae95023729d40474567d2066b9106b98bb5574a
Date: Sun, 09 Jul 2023 01:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688867228
