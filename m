Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B928A7B
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69BFDC433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664762453;
	bh=/CtxRBXoeGzeCk6NW/FSDHBRM9J8OWvVPWZCtDfwuDQ=;
	h=To:Subject:From:Date:From;
	b=j/gWFgdtf9cfd4JPbOJqnfngBuKFfTycZmOU/VspeD/Mk/96a/Vou65vgwnIhK3ND
	 8R2FgN9g7LacHsyGv64IXJbKjK04we+XQCbW5Ow2PiGrBEqbXZP6YeMtirOUyh8KIS
	 BdHqbWZTEVg9EHwqTQSBx5gaB+rN0TgQo74LsxvaU+/8mQomeM4aPLmFZ5aCWPiLyC
	 T6X3JIefzTUfcbQvVzKk77D6mDDwmXzVnmSmXXPK78jqQOZPfgAZE7DWaVlo8WwEB6
	 h8RD+7oQMbcgHg7Od2WYfNqeMZSTt991sH7BJrzUT8AF3guEa1HfsjXITXgAtbaEpJ
	 EeALj8GkkDzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523EBC433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166476245332.7226.4609418178136122502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e44dca007f93a3e86c661935e81388158160925800173ff6463564ae1b70bc
Date: Mon, 03 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664762453
