Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC11A6AA6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 766CCC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667895654;
	bh=ropMHMZHqbm8juqCJvQuvKz7ZqTkuFc8PS60Q/bbea0=;
	h=To:Subject:From:Date:From;
	b=aRpQvDIr3SUCNJiaw5kpuYI5E81eQII0i4jXtF/1PB6itmJ9B0oR3A5eojqNAtcVB
	 /2zGm1BYujnB6PGO9/LRlcsCQGPlaV5JpXHTpxWkA4I67R0V1RrOIrg+gMfRw2mghd
	 fKYi5K7jLBInaBjLFFmGMFe8WJyP703KpS3Im8KmmmOmMFnaYzilpxE6A6Tld6sg3l
	 ia0g+h2qdwFmjp+9NO6y8JR4ECizDK6R5jabNWyFzF2ScOD57U77/Mcz0I+ayMKBQm
	 WZGGNZgFvyIPHDvinGnE+4sIw/ipWM+RRZmxatBb7Oxuhr+1AehOe+FkpBxYB/REZ3
	 Wp/lmZ04ZvCzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E47EC4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166789565437.7941.13033919887112390928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea5dd8a13b8caaaca331fb058d96711c286f793e8adf3528d9abf96e501e238a
Date: Tue, 08 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667895654
