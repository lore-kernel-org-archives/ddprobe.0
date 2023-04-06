Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDD2ECA
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E135CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680768425;
	bh=0F5i44Az6IoWccuuJzzH7eqJXs+ttyxPXqgYj2fmMZc=;
	h=To:Subject:From:Date:From;
	b=VTwog/xOKRfak+mk+/1uKe0x/S252C6v1b3Qm4SUs4F+G6wjIS1H8wW1hKiG5FHto
	 rJxuCNI5RzCwyjWUN8LjQB6IrsJXTiQbGD7Zqe6fLHoJiBPzr+ADA+QPF+KEtaglwC
	 MBqDwE2ZN02Dyy3fZgGvg4YQO7vJlrJq40QiZU5Qc3Qe9wH3xiuLY5t2mFBuoZ+Ply
	 ob9trq1U//n7KvRRhjX5Apph44v2XURgteItfCq5UVJJzdufIn/wAV4SMe/uQnMU1v
	 UJJhHmisFnfsLu0eHh59MpyHwxqcuDT+dofxaEyN7TLMD/CGRye4ycTuvSp94Hen4B
	 fyOSm/PczyWJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0032C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 08:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168076842577.5191.3611391795884339766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65466ae80fa893329ab9f0293bdfb578a4a1be1b1a509e761469c0857b5b105c
Date: Thu, 06 Apr 2023 08:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680768425
