Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A377E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6551C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685171885;
	bh=mnvFwVvnZmEUUnQ4UvLoOTzHiLi5GA/JskoK5XxXEHo=;
	h=To:Subject:From:Date:From;
	b=bgalMPjrsAmeNw40Y3gDvrxYGXhvGRFI9FFgLq11BTIl/DlCj7FrDivuaWRkcyBGN
	 CdkG8JSO+dLhLkm3uo0/z8838iuvg2wG1+8dN/EpUvhYPd/1jC2zHss58vsLUZUXnU
	 B5Hp+60jFgPzzx8HMf8S3vtrgLTAGnkMl5yG670dJyqX4fxXcJdn53pC8o6t3YAP99
	 VpkWXiBoJs7BS4Z4H6Z2XUc11kVJ5A/kTKQxriSgrBqvrdNqv7SeY6X5OxTrlSTvlq
	 l9p3/YZzG3CudjKQpfkLGXi/wlUncTBKNFQLcy9a/SKzAwotA5jAVdngr+zy4zSy0H
	 PLYcokDzbt5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B947CC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168517188575.30637.13302360357542138031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 488c948a8b72059858f45a2524a527f2666eb4a4d8800479dc6db8a03f0e2c3f
Date: Sat, 27 May 2023 07:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685171885
