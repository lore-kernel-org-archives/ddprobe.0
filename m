Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7AB17E
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D0FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674864785;
	bh=6kB4EE+EkwXOKDF1Q5+HXrBfrJ1tNuM9sdwgRWx6FRc=;
	h=To:Subject:From:Date:From;
	b=Fpit/o9s51B08gjmrm+Y7AH9KsBQ5slOh1fSkcQ7fk4kFb81fpTAmBeR5j0erYuws
	 irjffgcD9tpT9Phyq4xVgVTyIUIyvAf7gpxPPS15f4/J8GPe9DLeij81JYS8sDrVMp
	 e+Xh+YGP34XS3bvvsQuQYLI4Jx4qFOxGgTYFVYYZsMrcwJP6Wtg/mIhfIUZa2aMBol
	 d3kAE37VEuykFe56EPyvcjZgjmDvtG+SYh1bRAkgOZVFOQgk4gTwg8KpG+cHMeQ9TK
	 YZ7QdGm/Rskgr2axmzj4DrVXh6I3OzHO3itbyVyd4ud/V/NQvaLIiOZnUZEATTesjr
	 NvBd20LQucXew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4CFC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167486478575.30234.5209791506109001515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5898fd1eece79161d73bdacefb8600f47a4e88dfcdf8a523f926eb05f56e178
Date: Sat, 28 Jan 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674864785
