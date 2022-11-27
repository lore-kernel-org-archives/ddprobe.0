Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB96817F1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 701B5C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669533654;
	bh=EwLGnUPPzTN+dHtXWRtajvt1W73JnzSpkZgHKDz2oXA=;
	h=To:Subject:From:Date:From;
	b=uL7HNG4bsGmrSM6MU7QE65sKs8BGXmHC3BsDU2npRq4a8JfvzpiSdpV70o6TiV767
	 Apru8GUQ5CNv39Q/Lf1UZuHICY9kXpMytSUppt/djOSXpIZHVfEUdK741BJqUbgbZx
	 LDHySZ9BwfT4FS73ZQZieDhQeDA4HryLRK7kGG+qiRPsoa1X6W6ztiHOTtv/Dw4nIR
	 hwTNc72OijvduekSoATDSNNvFuWWz6NHxdz9bPVHXXFiTWTeEK5/h8eHvSkvz2Hqh6
	 ChaHJRjbeIeQT2SBvMxhCIkXJkIg7qo3sEINrBr5AH6aCDzi4Wd3eH3rzrpDeNjWot
	 g3cMpyq7PK+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FA3C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953365432.9124.11743302479311697715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ced5036e3815976045e168b8fb25d5a8c807e10473be55977c7d3f357e4e7e92
Date: Sun, 27 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669533654
