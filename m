Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B24FC1FBA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B460C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665513053;
	bh=VHCF9T/peC1YcldQFwE+VKNOaQwlNOCC0Cr0N5dv530=;
	h=To:Subject:From:Date:From;
	b=k9wI+ddnko0iDVMX61GgCMmEZ5omgUQj+4Z/k2SaxZEAZySP5Fwgb057ntWcJMkQa
	 0hTpPaw6vJfIluBoR1ZRkLu9lkeDJjF2SnlqCVVh77qwRUTXj5i3gwcmxiUj2AH8zO
	 i8hGtInGJKTsh+9O52fTI5bOiaXxRTMz6PKgAq+Yr7JlIQ1tMNCVNQEAxvtm5/hQfd
	 yQThn2loTq5EXjDN4Hy0JdfyjCvOe4IDJwjIIOwkAihy7FSkI++XUvuscA+Mnzozv7
	 WHgeqCq2fX5CXxg/d6/Lb4j/1jqfBKtbn0h0Rgux9u/egfNiW+s8zep90VzF3avWA6
	 44BZHRZHpp4yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52457C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551305332.7427.15282043198907908455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8c3cfa0e47ae2bd1d2862ae1f48fa8725d200273c6dcc9a4292c66425d4d0b
Date: Tue, 11 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665513053
