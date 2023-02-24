Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A14195
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021A6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677206706;
	bh=018JkaVqdavryG6ANDSx9OiSdwUgvN7eCwfXF4Frgmw=;
	h=To:Subject:From:Date:From;
	b=jhf4gOqkbLAGTGLd5+4x4SjhnQGHHaQ8sMuuf6eEVwS89WB/g2b35wRv265fH9pFf
	 FVOO8CZ2C+M8mCYWqG6wOTx4X/frflDXN/zGk5GWNGzPUXh8NhEyRPXvMUS8Z8o4iT
	 U3FbwuwB8UUwyVfRoH0ugxSukbyZySTDkdBvvchGog1gjzHAW9ZxjYrb3IohjnMu4t
	 UrlymS6ee7i+wz1ENE87Tmzm+AHr/XOa3gRUSpbW+3OQvAEiVHTSTF5RQWua0F3Dy2
	 7S6e3MaIoyd7Jkj2JG9bsvfEanAFxhMkiR8xrH43vr6tuqbbMmp4hTtDpDGzdsxxsh
	 sDcI0SieB1+rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D960BC64ED6
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 02:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167720670586.31077.5709578638989499917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a8ede3a9d26ce775f7239ee82bc1e8541f447ad38d0a5ba7ed55efd06d6ae2
Date: Fri, 24 Feb 2023 02:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677206705
