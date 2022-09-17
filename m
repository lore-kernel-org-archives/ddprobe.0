Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA05763A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AFA7C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663408253;
	bh=+5NLNoZtXcuIULZvZXhVuGO2ydBEO+Ayc/MAAzdqZ+s=;
	h=To:Subject:From:Date:From;
	b=PfjACLuVhK3Lgh+Wt4iXqEAx2TMdwfr42qs5sE1nBwTeaGJubJLoZFE+EX97GOPve
	 Hs46ljfO8ji18gtEA2GJzcy7sQaklWk+B2LH6Q7gRvCK/6AKnoFtqIowX/kJnGJXP/
	 EFVAmqMZIK4BWeW+kb6zkPQw0CadPPcJ8zNt+xhJUhgVchNhYlya6Am3NmiNKywgIj
	 DIuaVvl8rh+P/vS/NtErNQj67rttOz1XoET/1mfytGfmT1QVnEvae1RBldNuGUK9A1
	 JgL76TLgXxVhRTdAB+gqCgtG2EYOqa603YC434ybIlWVErW1ehazqh+Uj8HRJnGkTP
	 iGjjsbCG9Xofw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BCDECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340825331.32370.1969004416324076082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837907ab810ff7d118fc8526fe12cb038450e433906a639203593fe70ec3411f
Date: Sat, 17 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663408253
