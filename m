Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B90D522
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBE+A1li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74775C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702133296;
	bh=753Q9v/UuFGfONX3KlTstrOlva9PWv77HONK8LqVIX8=;
	h=To:Subject:From:Date:From;
	b=qBE+A1lij/Mwwc6b7POF/Cyc5hobhvblyN8M3A+Wb0EadDiUqpltnxPquhq9dpUeA
	 UuRmdOZIyUxThFNuXyVTvyUeahzjtkzjV65BDiLi6xK7nLh4kZJynqFGzhJAlL39n3
	 HacLGs9keJ21mve6NJz8XNVgaMAIxlEOvxxdexHUyphuyFtf3CCSyCVNxMqEwiuQqE
	 zkKUytLx3u3UInGbqX6p1Dr4VM/kZbQmVwlCLzcg9cgSZ+2SnZikBMox1ypzVM8OMb
	 BLlhtYhtwYPq6oecgdbskvFzFAYb72SXE7TdFZS3lofjoUXFwzJBntZ8Jd6yxSWhu6
	 3Q9A2SZNqyaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF8EC4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170213329636.21005.4709233396438790028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8beaf0607a1a9c7c68ad6b04607da2d920c2b36a473d93db3023a134adb79658
Date: Sat, 09 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702133296
