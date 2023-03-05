Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430CB7E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B07C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678004225;
	bh=N2zdSrouj0xZCHsnt2jH0v92gnLPvZv78jfMAv5KwFE=;
	h=To:Subject:From:Date:From;
	b=DKKy4juDCqaDNceBU1gd6HKSaNe7B/wgbPmA8O/Z5jQkSTttic7cTiezI3d+c3eNr
	 JdKQbPDPIcXZi8xiUkFLWl11db6MBZjOSuCxtgErM40orL1hO7RtqB0b1/VC2b9eKM
	 n6njB5W3Y6XD/EpkS71cYSb82HeUcKksVHedTK0vtI1Gzp0GElXzRQO4wSBqu5BxpM
	 8O2Y99ReMKITDNQag42Pcba8PdYAQSTDsefiMe+svkb7zMktVccaOmMzaaJvOizxX5
	 CX1Mxt78lmGi10q6Fz+XIcamJY7vuSBdC7eapZY8g7SfVH+WOAAFJ+sJqY1Is7oJrC
	 yU6MJxyHOH3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF49C61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 08:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167800422574.32071.4999651369202117803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fddcf94317fa38cb1913d49a0b976b15997db42c08f3a9f75bb1fbb6189903f
Date: Sun, 05 Mar 2023 08:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678004225
