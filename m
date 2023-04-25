Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7927B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AE3C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682391245;
	bh=pDMAcMaoQ4glh21igqA/F0Hl6WFZwr592BKGh5RWwrk=;
	h=To:Subject:From:Date:From;
	b=QUyo39AbnHmwRX5HEeUE7/51Zb9glSKScI2z46xtP4JeisBB3zQyOYf8Ru+vjJwTU
	 NQJZApmQM/YCr2h/ovPNE8VjffCvu+yVP1d5M47pomDSGivHhGJtqwdIqthdqYqK8C
	 tK8GwpxYV0E22AOIKiqH5a4ETtLtQV/Jah+kqo5qlShTR3WVJjrpVvj7lkb6UBBKMV
	 SjTBmCo00uY27KHxVEC4f7FLc39FEJG5MWAATEf8Veao81/coGl4Al0gGsCSyCdZe0
	 pJlzmMLuMze3/Bxh3xHCmDm2Q/FEF5shpibyHqfMp8e4HD7LoV8w+AErxjsjYPJ+bi
	 qyaqIyXlXP68w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34F4C7618E
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 02:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168239124578.25152.12433837376794275809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59cda45704f3cb7b102798b5117807cccf46a37a52fa5d25c8be69f36f410c83
Date: Tue, 25 Apr 2023 02:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682391245
