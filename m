Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF6D1876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F16C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671528687;
	bh=pV2JIyWlhgfo9CkXseA8rafYaUUlqZ3KoyDN7J5s2YU=;
	h=To:Subject:From:Date:From;
	b=j9fEWTGLjQk2QHO25XtJUe1F7o67vUWI/ovCA26bqUMxgm0z6MhDwrW0kHZIAfOln
	 0mO4XFb6TvJh4miECTFWdPH0tL+MER7fiYNMxliIksqSA7gJ5QITZ29DwIl5znkpy8
	 zjYRYOdcCJI9omdsVCYX/ilg6FOP78sHhoQpnOX92j4okJtFFQ/48dSkbBx+CZVo/g
	 Oj4pgGY1iRB70KbJkWlFdfqBarTa1jw7XDzo/V799Lq6rVUI8fexG0ab4YUimOzHCX
	 L+W1mjUYJ89SpXN3b3H4oi4zSKoqxKJS5L75VzuraWjbI1QDnPklByqTmyf6ChyDmh
	 WN1S2EKp3oujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665A3C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152868741.26298.5185782784409850518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a21d005dd7ec78ce92a5e8027e2abe2adbd1d0e302dc91c2b1719b26fb20f1
Date: Tue, 20 Dec 2022 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671528687
