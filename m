Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AFC10EA
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84788C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665990653;
	bh=ZRiaLs3oE9b1CErsYFVFe3GdNuBQ+ARUQgUx80tTJ2E=;
	h=To:Subject:From:Date:From;
	b=IQ0DdG00srGd2vzLV5qUvaOqzJpU2q9yRXWQyNsOProPlIYcjuT2TFhDxqH6hKELg
	 hTGs8sm6Hh0YODYpO5xOL17/Lxum/O2H13GMWvvC5v8ym9Ev8f1y0D6K2WjGddK2Gx
	 BdE1olXR1CAfWesZMOkTPxK72+M3OExPA8HP40f3vMV9aYdhpE+8/ClNzACVux1ykl
	 RhQt1I/zy0fi8xKN84d4UYPuUIq+yISSh+Zpak7JXIIYTrb7MAzEoqsLwTIAfP2jLP
	 kzDoUKfnWAFD4C+16A2D6SIMlLqkOrf4W27wGePRGe0fHjCbs5khMd1tHgAC0MkWlY
	 5/mjKhofXXSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B222C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 07:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599065335.21476.2970372149888879403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ee1edfdd7a106a7847a295a7de3abf2adad9d0ae6fd4f9acb68e86e6165dc3
Date: Mon, 17 Oct 2022 07:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665990653
