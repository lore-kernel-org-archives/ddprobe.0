Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93429DF6A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08774C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689327069;
	bh=3/E1o4vc0mmpR0r50DRELB7Gavn0msBlvioTuWORBWc=;
	h=To:Subject:From:Date:From;
	b=Zoi6DoPGJWad8Ne96qfkpyBCR7B3UnGHEe/rXUCxLPUY1e4df1CWO/hNa1IMTd5VM
	 2NIaGoTDmiehgkfBonUa2AJeJCaFZwEdhik7mZpB0boziw8DcsfcCM+BwffjioRn1M
	 CXSRph9nfwSQ1FEAydmBKXsrZHSF7PES8MNYsqduhu1OLQxNoGR9pMc+vvpKmzduqq
	 uprmtJixnJM+pMNyVrbamSQMt6Xy7UzYmH5vehOsZRzyjTGrcPzW7ppfK8nuq7dPDW
	 7kVKBqutORUhLKhyVp8LnyWwmJpbkTiXpG7f+hHhkXWX1QMT4RW/41EgAuehTDHfGl
	 NA2wMUbFsRVtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF56DEB64DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 09:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932706890.23571.5047117695830534416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e835c5ba46d6fdeef8cb9a9ca81ee429ae6e6e7bf4ca405600364a55f8bbfeef
Date: Fri, 14 Jul 2023 09:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689327068
