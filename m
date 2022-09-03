Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA46A23C4
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B035C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662230453;
	bh=vN/aD2j0GXDoEpfipc2RYA1B2apjZFXUdVvycFLbOWc=;
	h=To:Subject:From:Date:From;
	b=GTJDHF926J6VZHoKS7YuJ3z2mdFIN25EahqB5GAwB3urW+4PjXmk/kHkzb5oItlaY
	 2qln9uzT41QvErgT/VbAyWx7oAK1M2kyrp340RQJ3+KN40cTiPyZbUXvQGxtyBMSUe
	 jaO6oaU8nhcbVdRmAGYf/5TA9lFsQ1zDtOLC2VDDWtFX4XwS6b/ejD9xE2sUQpUaFH
	 BJGJ+r4NyeuG1Jeqvh4ou3V+ZfkIyCGnQa1+IGN4IBEgIY0JH24mJekVlEGP0sp5dN
	 wq5DnlYpCKr3wzAwetZUZIGdsSg/hv9xbSRwOnwgMXnhsVFOiHBX1BcTNUX+a/Ao4C
	 tHpcZ2h82Rzrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DC49ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166223045331.22110.9606078907421348813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfc9316c480e6de37e49e298dea39e00f05639e00656625f4ae7955ec4b26bf
Date: Sat, 03 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662230453
