Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1DDC192
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F3C7C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670208654;
	bh=uQWrYwOPFK9w1+i9ElRWRABC84+0bBEZwYJh3TlvL+U=;
	h=To:Subject:From:Date:From;
	b=Wq7SVBWlmPUnHByvnl9VFZvSQHZmao9CNvLonsq2iNoDoCiXOr7ge/TQjEgG5g6DH
	 VFb3RxHRIE1C4d54MEkIwqHw6QwNVUTxIqRWVTmgnBSvgkx690tgySZHEDAm+uyyMX
	 uedqVAhB5Apu38dMfpq2PWMgmEZrDs9jPQmuocAnorjG2HvMwya1D9VUBUmkpUqvyC
	 f3ypc4a9wDh0+G7bSXycxuxRCwyXoGxpwyvU9a7YZjjV8OiC9NuymXo63SlNFgWsAA
	 tqnpV25e8oQoAl2qPDTt32mvew0m8XQ1bdzyWYrbUWZklYOxrqRL8Kxy22wZEayohC
	 oCTBYblcBDoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7360CC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167020865445.4348.3444232405687394767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5641c25d13dd65fb10a006b066866f867d1c7cfb443052db1b983397a6906a
Date: Mon, 05 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670208654
