Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D92820EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4053C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674239525;
	bh=SwVFL0yHz3M9hpsVQPMozGATorvsTt5EwwxWGXk1ZiY=;
	h=To:Subject:From:Date:From;
	b=FZzNe/A6mXNm/k0Qe6C49DxlMmj2J25cC8uBmL4CA5mnVMQCM0oTdU3uPcBiT9Jbq
	 LTjIaKKXuSMsqE8KfKO72fgUpIRMsz7m8F25OsdWuwt1xOrRhKo+qqz/cFLLJoINE4
	 vQgOWEyjODkJ2YOVA+pI2bR8rVSMOMbZKDVevGII2d5OIa8K5QeTBmaXyt1dMXOCvn
	 wbYPv88mCKedeUKyMFze0fsgx8vzMKmFwPV8N754w9TmO9Ke3I+2Lx7W/Ok4c3PVjZ
	 S/7wkg9MrCvIz/aaZTF5f1RmLMQAjH8jtDHKvTqVdZ/Sog8YAZDHK+dU8Fx1GnuC+b
	 LkVmINLbTyswg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B669CC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 18:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423952574.24840.11991868406617859893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a054d16ad38d359eedcb6ac42642966ce9ffef9a854db9bf31f22cc012ff50f3
Date: Fri, 20 Jan 2023 18:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674239525
