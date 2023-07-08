Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8751D7E2
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02005C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:07:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688785629;
	bh=VO4ysmCBkiHbGlaiDVNosHqFymYc6rBW60ZlxEvYMS4=;
	h=To:Subject:From:Date:From;
	b=NY2aQttP+VoKMSx13HD/F/wquyxWcSo7aR0Fi/eA0n+XAYBQ8kfnYTgPQl/rRs3zn
	 FHvkY/c8ZJB2zwfVySSDAK8JPL/dp4PY4rfE+EYu3rZny2k8M2uJ51b8szQ4XFeiD8
	 XhkYGYtYfLoY9kdTNiPfSMEkpHapwxr8OcJbIjRR5XkVWtXyMRZp3H6lj7T/ZlWwAp
	 UoQLeWFc+q8vVCz+2vh2HnJx8pgvbWH7r1qO7hWJIW96bkaTa+9TXM3Q3U1S6Bkehl
	 Lfc5UBF9+BPLXMovzA77HKp9RErYBzb66rAa7RdxvDxLsAsnTnU68KIKjOlu9Py/OX
	 td691xb8UgcWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3C3EEB64D9
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 03:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168878562883.10421.10124715365879149265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e62b09b8ced5f0a42898ed7b1ef4f8acab3ac0bbc76ab77e32d87a72bfe9f2
Date: Sat, 08 Jul 2023 03:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688785628
