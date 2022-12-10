Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7576FBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 964E8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670713887;
	bh=z7/of9SS1Gb38NuChnKhCdcCePogooQXVpe4/8Jz2Lk=;
	h=To:Subject:From:Date:From;
	b=G8K7sF3KNP49JLLEPz0JRbzmL0CxrZRZQIyZ4B5w1GqIZ0SOoIetVdERoysLQ1Ka6
	 p/Fb5/eEmo87B5SmOnfDn/RuDc4s6onvzfX9C8M+fRqAG22GK8Z4kyZrTUJ7yKJHAF
	 otoTZWLs9iA7rzrRWuIqfGOHYn6J3n/x0kZ9H3GeDRQIhACl5IIWVuxeaCEqMph2xX
	 eeDlIOz4vn24mqIO7N+KS2kdPj3oTJAM3ZEW4oUF5kZcjOs44P6to2J6mrE4GwrLD3
	 wqlwjiTK4TyDptAsdruwcii3MssDYQvGGOcEGSLqWRigWmjrB5/Vl9q2vv/5Peh1du
	 9mz7rrWaDjgVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78AA4C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167071388745.7547.9174519102864410428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d976c09f63fe8b1c1097054a3eb550832d7bf8a12af6bbc1ab4b349fda9b243
Date: Sat, 10 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670713887
