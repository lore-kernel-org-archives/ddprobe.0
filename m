Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EC920F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:48:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9D1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689148088;
	bh=I4VSB8DHc2h6QHfD/IRxSuM5efH1HLdQKwSBh7/YeQI=;
	h=To:Subject:From:Date:From;
	b=Kh7UoivPL/zHRwwS2q75GW0SiKTK0Ur/8VZJctl77RsERUAHlk3Kn7A6pxGxUqg3K
	 wur+RMFyefEoplgYO4SY3pynvKRtaNtFxY2aHoLxcC0Vmn5ghKYg/xZd0fjgf7pq0A
	 7Cstl2wtuK0BzH8x7TVKkyHvSht/NDfwGcPva/UR8VpJz7MEKk+g6c3MZLDu5Cs9k+
	 aHdK4NMYFlbAIN9Fq9X3BQnIME+Z8F6qbHVC2O+KGbQ3xSq/WlbFEsqKvW5agBZDyC
	 9IZ2HHcuw8WJVkEHoIrTx0SZaKMBCcfMbriTTkm3BXDCQdYmAwnvVOiwhg2EpP2w29
	 U5nVdDOD60nFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4139EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 07:48:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168914808870.15466.7656462838418223480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cbfc7aa2b5c7b2e947acc97073c6558a57221b801bfbd4f959d153d04d131d
Date: Wed, 12 Jul 2023 07:48:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689148088
