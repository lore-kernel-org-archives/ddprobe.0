Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3F82F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DF8C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661713252;
	bh=/fZmmEx+1E2DrKEZKjCg/dxtBd3vNmfe8DesS0KtfZ0=;
	h=To:Subject:From:Date:From;
	b=cnkTOhjpXxsHGERZ8Id1XV73IpgAdzVCsUwMkVMZye5nrfsnyx2TEI/SIrGARe9/E
	 hPvrATuGwQsBQ3tLIjqTqrRGtKDdDFOBdzR8BrZetg0joAplLGPlXN5n5h9Q3ip//n
	 bfIPS+m2YiMfHdd0TbU6jb41tpdpIwvZ7HtuctSD9sniYGBskGVwO0tdC4Wd0I/zVd
	 Wqv/tD2XOnO5m+gl76MP/XRXNYYm5uS2rW11XADuy2iIDkuZxKJSnu3FxZXRQceDRE
	 3Vp5owEMo32TDWz9wTH/h1PlchiGsxYpcQmF9eJ0nu4VfslwsoF9Mik+bMNsEifnJh
	 PLjJa0MSelMGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55788ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171325234.4235.1156845234523403724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b952e2672c974eba5fa50f293a269080dfdc3fbf6fc7b713b4f159a099a713d9
Date: Sun, 28 Aug 2022 19:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661713252
