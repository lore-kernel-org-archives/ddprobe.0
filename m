Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B507E
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F007C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664245853;
	bh=YY9cnuyMD37yt6RJrsankkORX79AIifa/H0GpdRLqd8=;
	h=To:Subject:From:Date:From;
	b=DkxeErCvwruDGYuPQC6vbYblKRCd8fdqgzpCpr9vVaLJ4b5/LbMxsl5O2JKb26aFi
	 gHawvDk6hR0kByjEdktCY+oxLdE88yPvOzpWilqfjQHNtfqXa2XLZLnH5Ligj2lBhH
	 igsd1bgHnTpfjifLNcf4sODpT8jVTlm7sdOam206t7txd/uSBAWJXTZvILlcEjDZ0D
	 1eMna5nAwqMyH3NVp/Hm0JShZYzZItKVoTHvLOHf4g4xnZF7Nh0FhMOtXK6UoJQ0su
	 3SZM0PGumRzuNm+GHKJKXqxrYVU3O8f0HL+MFHlstBF7xW81K/PbqMXo3Lt8aE/y0x
	 vQjde8hZojLfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53214C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 02:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166424585333.11466.3762278614586967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c355f620846adc0ee250f18647fc94bcf76baeb8bd67b5746032cfeb4aa641
Date: Tue, 27 Sep 2022 02:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664245853
