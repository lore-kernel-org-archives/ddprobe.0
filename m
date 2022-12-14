Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B6A197
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 749DBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671014487;
	bh=ooAmItl0pWT6nWF6oFhAuyD0JBc792VFw0RuIefrw8I=;
	h=To:Subject:From:Date:From;
	b=KPP7M7gK9VBhT+bUsFHaEXk9aQ2wigDgI16NNnVwTNq+U+989dm/pFCYAITCzBZ48
	 j5yC5KEdZT8cGIda41XWUXwRMbma0ouH0T+hXyYcB1Mb0HsJc51+wNtgmVMMJQvXVb
	 Zcgew8z/2Hi4GShHKHSAgSIAlNQSfBqerbmF8A7b0wPnhD0BTSN3UVnqYvu0FO3nvn
	 UXT036sbBAkR9jBMBIv2uWSoBtlb7L7+4CvuJ55KziHNYcqPXwZF1tVZwNSooFN0U9
	 LJOAeZJ//Bhi94uCli/Gkr11ma5J8GTiS9t8eAxuoRFW9PaPcEg87jiqZ6xmlm8uvh
	 vB7oKdUi7fp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D961C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167101448737.20991.11802443248235313393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7051d48053c2318ae7e794a1418334add3acd705a6d664c16c16ff166c1e0c6c
Date: Wed, 14 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671014487
