Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0289C816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3794C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670572887;
	bh=PAWkTk13QAdL9vBQz9b1w+OHfsLCE038uLhzVnj8/E0=;
	h=To:Subject:From:Date:From;
	b=VHaJghcQlBgtVztXEFhnRbaWNtQij+fftiV0gk5+s/A97t4apa/+XmS8bNCqldrcw
	 mLCkMYX9KFLBeBIYLZCKG9vXqp4LjH6a63aDz6uxv2OI4E2Bz2D9ZVBO23NpedchUb
	 Cv2bwBJLZdQq0sfu5MQ+vuPZ+Rk2L7BPBYzpSLXgFKdqLAGeyYPsr+wy/NsZfMameU
	 kGKFYVJmynUzs7V7WsPCwuJnIMP5zpcRQae29JqR+1iXj+tpmdZIMQwUKU3CjKg4eH
	 VYbPUhfAmRRFosDtBOhWl9bL0AuJVxzZA3uANkxXaSIauyTYsdFAeBK/M3XA5/sU1e
	 D682tlSjkFQ6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72309C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167057288745.5728.7993539001102565955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 394b0b8d2a183c1aa7ac6e73284dda873189fda2ab9f078f07694a4ca24292cc
Date: Fri, 09 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670572887
