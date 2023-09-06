Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8322281D
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 06:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE79CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693980848;
	bh=Nc9ZH6DCF5r4LU7G5SL3UxJGubPdXL/jAgqkeN6Nqh8=;
	h=To:Subject:From:Date:From;
	b=HjAnobMQC6nGMeqgfMnN6wV1ubVEiDcoyY+2+Ar5CRS1TP193eqKNiuMcJZEw7rKB
	 Tx0qDPKt92HHx4IHih9eLO0fPZ3/4QZLyUDA3KmIbTC9svQILHF6YAdVdj6pp33Z0p
	 vkG0/s87U+rnt+/zAsvlPXFubvb2paEw4BN1pe2q7N356+BE/nwlWdrgUk9YE30Beu
	 0u+9pbrpmff+1rZKD8QeaUEfPTttXChPOqIQiv5TJVVHqjoNWnO4VFgfRF2ocesjrG
	 h7QmtxVoJ44dUbqj6ZUEZdXmLN2lOmQOKmvAjiGTg/hX/U6o50GDy6rflgsHrIDFSi
	 LwUU53sW7gnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A9EB8FAD
	for <ddprobe@lists.linux.dev>; Wed,  6 Sep 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169398084871.6764.15692676731720953766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ac4deecdc8b0541261469e96148025de15275e15119a5bdbbf75291e14ec9e
Date: Wed, 06 Sep 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693980848
