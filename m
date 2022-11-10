Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA179185E
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8958AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668079854;
	bh=d+5jcbY7hlhQTeLqnRERA63/xAmwQvCvVVNgXTGsvOk=;
	h=To:Subject:From:Date:From;
	b=hsaJNbieGx5JqBHwiM0e/ANROuVb+T9XgMKQWp5qKCPFafdooqqMkPR+ZEhLORFJZ
	 Hlg0l/4vQQSA/k9LiVD50FsusA7SxC42nzNCcV1EFEw6gpC4irVbUwW2xbwhx+xuAW
	 RKG8AyRX/H2CIB2VUisxNn7Wa2q+yIvjZO0vzGghkD/jjOM55yeEFdnOBPVVAB6r6a
	 FtneVZX6tMEaXRiN7ey7rNWFOxbb3nmMEK/WI5nbeA58qEX3yTQmD4zTqo0XlrDgAP
	 eVpaOsrDUIFGUXvL1Brr2sRxcBQH/PJJEeuIhCCSgQkBorDa8JA0GILUzeZTCEzgbe
	 iQ31zIcWEVUfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63774C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807985439.17319.16501385281807498837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4aab1aa8da2ad5efe8a55b0e0451ad514578c125295c6741dacf148aa8b8689
Date: Thu, 10 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668079854
