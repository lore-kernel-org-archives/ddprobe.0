Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D4215BE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B339C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:13:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687320789;
	bh=RjcLLpri+BzTX7Hs3vGDdqKJY/cZ8e94VOySrgLlaDw=;
	h=To:Subject:From:Date:From;
	b=gGcV/rsadgmsdlRCs0/F+qdsKlQbDoRXYENFqhQamPZyjkvQdeMmHOsda9ktY7xh7
	 vXPKMVXFxxuuMZIWQBDyjMSS7nnIQWOJxDoyyG39JSpx66DakGOQnjnetWjfHDjtXY
	 fJ3XIqIeldYysUFz/Mk5LxkD15k6I382y+0sGB1TxB5W3xErBlwY30Hc9aXiWMingu
	 mIbFkC1VD9Rmw2F7jeNj1K4zMekc0+1A3SA0Phy/ZYRBq0g9UfJ1cQKV+dtFOK3mw4
	 CZQ1gkFhMc1LjUaa42TEQ1BJHVctJe3CF1crdROkN8YqXf0CKoUH8UEECwtlJaHbzx
	 6e7J9wDZ6PVXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB4AEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 04:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168732078888.28391.15923633032716879512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f928dff548a7d4d8c7fc856fcceeda0e16257ad42eefc10329b1d4a3268957
Date: Wed, 21 Jun 2023 04:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687320788
