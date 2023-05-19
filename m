Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCDB5670
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D743BC4339C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684510685;
	bh=kU24Lb2jszctfCxJ8jlYd/HFGuOszarUP4fuknfkSss=;
	h=To:Subject:From:Date:From;
	b=skOf+8TbltSGozLSAHpavB2z15TxOUSI3koea8hxXm84YdFKNSii5fVAsIP/Y5pTt
	 M9NYzMyFHhowgA38CBf2cyikmOAf9MMXJ9HDBBHv44G4rONknQmqocZEI0AYHpVMo7
	 vV+lqIJrDvCepj/Po5d2AXPz/nyR7wienut3krGlGk2JAMYf5vi6gy6kkluXWY8P+o
	 I26YKwadfc9OKMvnnERjkiAu29oAAJoAwfajfazkgZiv9ldNskvuGLMhT/qsrwKjiv
	 RNL6dxS8MnMN7CCZTieTn4Gvv9UWfHtsjOkrLbUFH3w+7+kNxtBAeKDV8Fa2Q8lq3v
	 RT2WIuPKglu4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB277C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 15:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168451068574.21668.15337821075310082595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8badc6e6e30c2147f9a91efd777253aaa48a9ac8b17fcbfd9181031c5333c09
Date: Fri, 19 May 2023 15:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684510685
