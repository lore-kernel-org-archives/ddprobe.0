Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06646568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95885C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672690287;
	bh=H+Kl+F7aQTYtlwjF481FuBPR7m9fQZR6hkdxxxPniQo=;
	h=To:Subject:From:Date:From;
	b=FFUl7oC4RoSF3ZJkdygypGsO3OroomNBZENV9hOpcaPKXDrHd62BTwDg/yrjs8syP
	 29/px5FYZ38SEcLYPVK2tdk5i249raC5Tk8qGM1X3+tkoUjD0DW86bVm6lH6r1NMXU
	 d2OorxqWUET+ZAl+t8u+W09hTENc5gDk/2KVclS/9MW3oE+pT7gZeTXH4yz/CtvIKd
	 fQ8Caief01V8+TGAX9yrjcrSEbkzTr8rV8JIaIfaR7npWQh8bPqdklgW/h4w0uB4lb
	 tXBrCCDyUusr5H+apOqJoHkIDGjp6Ixve0eaGJekfi8Zsws86qJB2aHmVm7OJDZ9pn
	 WvxWMdWZoHOhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73317C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269028744.7917.15710862069908354992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05ffdc8f41afc47a73da680a7677b42bbf5ca742b09429bb3faef39226b2ee39
Date: Mon, 02 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672690287
