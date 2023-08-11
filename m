Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B986FC2
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 12:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2011C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 12:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691755388;
	bh=nnAagJYB0LnIuhtYLKAmxF/7ZxY2br0sLz2pkhj7E1o=;
	h=To:Subject:From:Date:From;
	b=jgy4/W93MDqWSuEdPFurpP3Viis6rbfhdhmFd4GjPxUk+4G+KNanJ7FsUzGvBq4xT
	 NsG30ClMbLAPQx+IFc5hdWmMyRFrgv4ALKf+zK61wj2+FJSNJcExV45fW/vlZ4WEdY
	 ccQ1KCPjSdsil2kaeAljV2LsSuz21S/LUjwyRd4XRoNKV+puUcRpbdYHOXcgdBEL9a
	 I7o5temfS2Bcxq0FT0qGo7p1sDj8vZ81eQglQaFFYdeRFHkB0nbHs1bO3/KK5/G2SW
	 fyxlqYiCSibkVG1ANd7tJFXlQjDOIRVXWFHObDF7ksEEdHjqdrtWgE0Ih92L6C3Cif
	 vGaKAE97ZqgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC847C0015E
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 12:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169175538869.2050.6014912467608939545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66fcd337a7c4aa85a98cc2b3f59b2a0fbeb2f8b5519b1e211b153e1159d3ffeb
Date: Fri, 11 Aug 2023 12:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691755388
