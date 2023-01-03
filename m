Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC55B8466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7609FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672757487;
	bh=Y7zEEKL8O7FMTeESC/A+efEYzy6DmVrk5vMhcUQixVs=;
	h=To:Subject:From:Date:From;
	b=mlrAJmZqDpBNKcL64BDZNVZ2oTrQVwmJkdPn2Yggh7MK/NDLY3mRQKFqTpOjqyuh7
	 LIIK9bm8bD7Ai4EFLigD30+gHk9syak73jmI25G4iWDGsTvV5/4UJEWIYoEp3Vmxqy
	 xSuqUcYuRbzTcGCf6a3YZJWSwwlTIfluVtnyLE7jbmA3zj923lv/z/UnYZN5wcSIkX
	 9bzK6RjFCuiMawF45OWuAUrNkm+VOkRfGQ2AEjIyg+h9JM3vZcsPMfeubQvTuE+ieT
	 gT/vIkJ8FteGdI6KS4beiiH/SbQQ99KDX1gnP+n37IjQYAajBpP5P53NbGDznAT4xZ
	 I+9wYVbNqYZlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E680C54EBC
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275748738.31865.76753784417288635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc42f84370dd0aa1272963b4032b2268bd25283d16926b09fb19400ae5b67c25
Date: Tue, 03 Jan 2023 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672757487
