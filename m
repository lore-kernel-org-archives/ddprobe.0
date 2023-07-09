Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C497C8F9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF039C433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688924828;
	bh=QShT27EXjwV/lf+uNHjmSrsmOUExwoR7xt8+zK9ANUs=;
	h=To:Subject:From:Date:From;
	b=dmYPBDs7TT2gYfkT+46uI/mKmJvtghu3HbbHZq5lZpMCeGddV7XDHzlieBK3PBHE2
	 yVXgJ6XNqNRUiM9UqXErDTAEwyf3SACEBaEC5IwNONj0b1X2ojurNJWdjSaDNdvzFk
	 OB2z2ZFlYoyVtWvryjE6yBJnaJZEH/mgWFb1OGM3HCN59JPD7fp0UERxoU60bEbH0I
	 yhOOr1gmjrOoaV3hswNjixBdmakbzj5qOCjiDWp+pU0KQ+X370IuGkXDP5xPMF/Xdy
	 g2ZXe9zPkpkMwO/uLLFmz7hdHR6Og4GofsBvV9vf9INa9tp6oKLfOpH9DV7+vWAol/
	 R8Fo20MFtK5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9838EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892482868.26777.4854972923326031592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2cb6c67e9d677e32b357368fd269d9a0e73ed13d0ae9cf04bd7bd2c122559a
Date: Sun, 09 Jul 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688924828
