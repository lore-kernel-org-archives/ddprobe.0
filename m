Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E709848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB333C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681755545;
	bh=L/b7Vwhh6kw79Et872X3vpf+wHwQwSOVlYXYHwK48gU=;
	h=To:Subject:From:Date:From;
	b=ocQMeSNNe6wXUIVVUdts90EXT1xX7ATyZ1lS9/uHUQGB5+tTL5/zBO0yGqgdnTfbK
	 szJt3+GJhWjKcOB7oJ1fZi35MrG8Z9kGuL/jKyzdIQhlwwNUPC7NX2kD3AbHaEhVSc
	 uyiYsUfxOq3hA3IBt3/tcXuucTIMG372YRrQcGbcFXoFIcWoWFtbDc8ouCnAmJKdv6
	 OyMs7IwYwVLwpPESw3IhPbyMUEqbPRbhMA5a/CjIAzbidMsGOKAo/3U+b7eLUTmMXA
	 r2AkgOO7egOyqWerbZ6XJx7MA7gSR2SoRSmd/vVJOi9q2q1De8ldD/FalbydR3+osM
	 RIwA/pCqHDaGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEB0C77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 18:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175554575.14945.13900662188963743124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa459793dfac8f825e4668d47cdcb824fd607bd2fb10579349b8aeee5d1ad4e
Date: Mon, 17 Apr 2023 18:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681755545
