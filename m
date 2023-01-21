Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3941C3207
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21F9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674328325;
	bh=DMzaFelDQenkjMAPusd0Snc21KWwCUhx4l406pKCdik=;
	h=To:Subject:From:Date:From;
	b=rdWMKJrkqq5WWQHzQ0KEU945BO5+GLuLBoyolnUmRXpcPHtu/4Vtg8yq+MfEXzQUE
	 wFsPfSjJ6b/errTwImH4cMRzXshC1UaH3iBXOyKLRXfMAehFKnRjQVQFS+vn85hAbQ
	 W+pGszhEgXGpCG3iaRmPYJx7DOhx9zJBtHnZeRj2sa5903sRwvxuwHvOkTsFa7g0hx
	 d69npXpkVXl81YyEYg9kUEBcrcMy2msE5fpsMEdUAGUfbnAfVTWO+LCgbxbuZF6y/s
	 MOz5jHR4OGO4r2WzkqXAguvqPYly+rVEpjTFl6lveZ7oXWLX55LF8Me0WO7NKey7K4
	 mpzEhOj8e1Rtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E50C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 19:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167432832577.728.6580304011506484839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e741c5b2be4c5ceef57a6a2edf93e9a0e33865bd178f3a4fe23f7f13f9102cf3
Date: Sat, 21 Jan 2023 19:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674328325
