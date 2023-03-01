Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4E17F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C01C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677633365;
	bh=Akd383L/Ohf0ASw2NaJ9PqT9YFocltrF21fKii7nS9Y=;
	h=To:Subject:From:Date:From;
	b=SzF9W4zcoZ2D0tYSu8988dh+l/FQ/3meBt9gzKHswOSWLgZei2dJ1/AD8FObQQLRo
	 oiMzBbb3YY5CgzGi/wZxWNsAhl4D46fMPMkXo+s0lNNqH7q5C49GandMb8qXMBIx6F
	 hUPxDr44kpJbcS0+4uZEmTVVxiTRng1605Kldbiuc+0QithQoAEC0Emprs7vZild39
	 LV84Pnv1aoo30O1wX17I3DwXgRNi+FH6tIxo3glVHnJIEDZUILJdwwxSFvxuwi5D8B
	 LjwlaI2s7+JprMlvU5TY1vVAdYJLo5a68izH0976qPj07r/O4dFMjjLKEYmTYBghEs
	 ah/Fm3cPf4j6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C773FC64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763336580.25209.2259814513804340147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322c273541c1027fbfa714432dd21f3147fbd5cd67c00586db33fb2fc1c62224
Date: Wed, 01 Mar 2023 01:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677633365
