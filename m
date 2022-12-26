Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D372108
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F9FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672071087;
	bh=T6g/EixbHEd8hMXpkKC1EK7oj82e06Yuqn6yNdY9bio=;
	h=To:Subject:From:Date:From;
	b=CIwLrXphlsMsa9GpLzLO5TkFjly805OFRlQsIbt9aA4tpmG+NxxDWYkzWwnszuGn1
	 dvRD8ldy66RQcs14IS1UvzoqGLu7Ay3ehRgCTGBgitlgmFiVU77lSSUQ1pmxfkNGBC
	 OJf9zIMySc5VB008Y42IFAWP9CpmsmtLw/aUMb8Av86OePgT0r5zp6DRjs5kXULVZe
	 NCcSKPxYsF9x1ZuJEY7SbGTuJ6j6ULSshvQ0nOz7ZgP36NTKZErixm2uWEQ0FHXLHH
	 yZWQmO5bgOyJEnj++FxUudGX1qKMNwQh1POrwLIMwZTsjJ11R+ZmMuu7CCalAtXklk
	 g6ksDdRIElUzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B032C4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167207108741.16738.2284978493073857262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292d6c0a901f3ecb62ce47245c55c4384ebe2ccf4d91099f661d36b64d5d5234
Date: Mon, 26 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672071087
