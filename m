Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE761C04
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78892C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671529887;
	bh=Cmx1yYT10o0Ogb05AhFr/rBlezXGHbjgbozQICsEJq8=;
	h=To:Subject:From:Date:From;
	b=rPEPnbtwgS/2026RbrMNV34j5IWKdj72+yUrcgMt8zRBW3sbHGmqtmN4TGkAkEEhq
	 6lP+RayirpeBSoyOK03DSoWETKflHcEj6rNnpM+BMxSBH4v7sOJ0/aTuYd367Mk72P
	 rUx3ROEPPysFq04pE9SNU+Ma5AGEnem5GeyzpP8KgVB8DXYpCCpdHt8deUCqCGxTho
	 /OJZCp5k0oUArtb4memQ5hAVwJ1zpnQZ6FumHaewUlpbW1FZLxUEQnQ1rIUk2eQrM6
	 dxMeNXTds4SdOwBQKHt0LO7EUPMjR5rZENge1dvt2ja1F5tSrdGONVqilZ8kD0sDSC
	 6fMa0uM3nh8kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EDE1C4167B
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152988737.16765.13975974717903299150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635ecaa0e50542e7366162ab4c17ca571984d313e7d3c4392a4a688cef4c6a3c
Date: Tue, 20 Dec 2022 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671529887
