Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F655171AB
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuuNecxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2E5C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699817896;
	bh=WhidMwJvjGitE77O9kYXr3IjFDSlzKoWEBHuTO8kDHI=;
	h=To:Subject:From:Date:From;
	b=BuuNecxpNMTE/sz+N+1eFJJai6R2RH2KasTHl9h/1YGLWA0Z6K2inyZpc4zki+jgO
	 l/nPLulk5Ysrl3KP5+g7ROEYIaP8RVgR0vEkq+T2hLC1oLvBHHAw01DpajBckY+Sgn
	 iRhvPokgHOzaveIU0KVjq6Yn9LhQo62ZvJ9T60MmnCBdFU3jBmB0x99Z5wuHdYRFOY
	 VYZd4LXOpg5CdV+hubM5OTQwyvMKkn33pyS+CAzR3xu5pMXXd4xYUzXsWm4U0eGGmJ
	 kVnnxBNbXjTstB2Rsa6fe5UyU9nVZ8uHgmuL//Eo5UIxbYJq2nb0ao8RqVw4iBIK+J
	 YVy6NRbYQnRvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE6C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169981789656.16971.9081362226425119230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 644aeca514bb1fa165dee3de1fe160499a1c23c66af1d84486092eba0404a370
Date: Sun, 12 Nov 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699817896
