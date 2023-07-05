Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB2F156CE
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C0DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688588828;
	bh=lHW1yZaIYc7+3sabrM9AfIEFITH2SynfcG/r6W7QliE=;
	h=To:Subject:From:Date:From;
	b=LFS8iHOtin1HeMZe7aeDIayaPDNoZ06f8cFh5zvzZD8RyYoicUVuqZd26LUTu6TYA
	 Aagm6sF/cMfjMTNxC36SFbRBNAnMuK3l249inGmZjnDfmJi+/NbceVrjI7nR673/TR
	 so3wy+Ei4UqTmX0F8h9u/lzEy9ddVzGAm2jsbfKAVbQWUXOvZexIpMcLCs2Wn0ITg3
	 doXcEQVEpMegz5PNn4KbUw3HHsQ50MRNGrM4LmdIjp2vpe/XUIxf1lj04swVNRrt2Q
	 Ajaf5l8r8K0SusMBv0kbpqMv1uZrRiLih/M6du8jnPkA8BertnV+cImWblzwSyxPHy
	 HioTqK73Oxrfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB72AEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168858882869.8014.9841779590513037716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f443cf94cb79e7d3880ec4385baabdda08af001b76b7d6a891ad6e5a4ebb0614
Date: Wed, 05 Jul 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688588828
