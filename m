Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9864C95
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B1D4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663329653;
	bh=ejkLiZ+ycPWwMY2b3fYSZbXdQ5bTp4A5Qmxey/lAw4E=;
	h=To:Subject:From:Date:From;
	b=K93P7QFqCFrQOBDhykIXce/NdYI8IDxAX+LOmLN1RDLhJ0p784fv5+GgwpFWliZKf
	 fNcd4mGHMZkqsN6TH8arnC1sejENeorN+JOcQXMNu8Hnard+ky0dA5vHdBpwRXpf2S
	 AdhmkQtLI+/bbL6RDZxP02e2VPsWtQLJdFNcNKbyc8k8uNloweQ/mAcjh16yQYC3GR
	 TqqRlWaNwKIPG2sni/IYcWu96JE/5vjf/MUZ1nDmaTRSpcMJITes0733SaqJ9h7ZbI
	 uHsj6+ib8HT99PSiWgeCoEmjT2sRrinHOukUYtjdOjnvy1AB+JKBXpLtfj4eG+gAVQ
	 5oy6R3PyuV0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5547BECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332965334.32318.14694535818405845031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fc0c56df11ab4d9bb5ccc0aa5c72d1588123266cc8a87f25ac9e949b67a39f
Date: Fri, 16 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663329653
