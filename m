Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E6B47E6
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 00:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE354C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 00:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686271446;
	bh=XiZ8UI0++FSHFL0XlyxvtFHtsJq0Pe/VvCxgkum8pWs=;
	h=To:Subject:From:Date:From;
	b=MlqQUBaZEafuNja+eeaSRsw8La/gF+1wbjykEY7jvWXfZ3qU1Q5oIgnoi6wHxloUL
	 c//fapn2tynoP7IUi/vb16fvvlEk4FE4rkDgE452orYBJfYNKFk2sw66g25mxOOSkJ
	 mOm5elbfG4z7kZ2QC1+zaSXsyAV/Un2+kuvRoRhxpNz58810xmJtQiRXjinEjBpTbK
	 uORKjRH1K0+twrbl1iE2SUzDzZWOkX3jzkS29N8TEdILBt3mt2s91vyGezuI0qrLyB
	 KSzitF+rLl9RafMLtuGEezOzf6Knt9JKx2U8x5mHduvqKvjDJq4ImoLKo9YJCVnzeb
	 Z9cA9qfj2ILgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4DEC7EE23
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 00:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168627144582.4577.14471863005093121168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19061f897a450668e4feb989ee445755bf8039f70bc54834fa0046f27120177c
Date: Fri, 09 Jun 2023 00:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686271445
