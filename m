Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFF27F0
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E24F2C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677635165;
	bh=KIziz0PWh7P3XpesD7vPw6LUiDlNrLDLeFdFBkkVy3o=;
	h=To:Subject:From:Date:From;
	b=rS3HibUBFrU+QGbkdrVKnQh/vQgpL5FfPNHrL/QsbUSTjJvPKEBmI2lFy3KIj2RDB
	 y9TnFCy76bInpecuR1V7YzWpt4vyOPWL1WymFS03RhhD6Pa0V8lHYvCekx1Lxb2t5X
	 PtKg/uneShHF+ZfAo2WNyHmkVuyBLsKN+DbfUx93epyEoeViOt4fFl0CHVkSFfUNxj
	 TL8Y/6LAGb1gzjVT55zTxsgC5CsJRTNE2f3ilSROF5VHmlJDqYvo79TlgTZJnw1skU
	 muS5SAW541UtJ2EJgXffVZkLVbucBhU69IafWZi9zsglLiy7gPJXqpacSefX99yqCm
	 scUd+/1qvnjbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07E9C64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 01:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167763516576.5493.14395545791720725869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1371f2b473a1993436567fdb7687b4b44798704ff4e0b675ec1803a1f34e4be4
Date: Wed, 01 Mar 2023 01:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677635165
