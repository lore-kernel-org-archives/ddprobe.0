Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6148AD51
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0A3C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671051687;
	bh=n4k9VzKG6bJqUYa4za0s8zP/suO++6EmGHxmIf1n6Q0=;
	h=To:Subject:From:Date:From;
	b=nptrA/fUUwPYUeaoO3cA4dUr6wPduG1+w7HfwZIcVDXoB120HYcxn06AqUmYZLqF2
	 xDPA+JK1o+5FFueafnGHPbLJpi5f/zaHU+LH08c+c693RVvkLe6u/fFFWmD/AnbwJB
	 5kYwEOCTWl+qVG6x9IM1Gnce1Fspr2/vk66zDxMJWxqmeEYuS7o2VhFsPTusn02fGg
	 h6+nlrFMu9+tWWGQ/1U2VGblj9/8U+SdB/9HavY9+5kDfawemHWdyV8YaGwW0BfZ5g
	 p7Tm7hU8dPHReJBR7FNhHnNHH897xbKbYBUZgsj11IytixKDF3rROgEnBIdIFaRPVw
	 SJIg9ZFnm613Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688D5C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105168742.12279.14936079642342924975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cb4555ac889b6e667254326f679a05ff6d84ed07e30d57deec37c96b17d387
Date: Wed, 14 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671051687
