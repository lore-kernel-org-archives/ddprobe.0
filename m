Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D4F1851
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1DAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666924254;
	bh=8AgWs9imCsyMEDIMNH+VuV5Cpk0bY0HpgMHc31NESKo=;
	h=To:Subject:From:Date:From;
	b=QKPt17cHtPr2tvUnCAQYtD35saVZ25fdYWe+5SAKtSo3IDKqDNnhNAYNt0naTjrgd
	 bxYEcVwmMFlXqL20P078f8rSuDln94mx64kPgUurABUe6T6vybGS49cmMWy/2dV/mf
	 Fhjw2sbq3jP91sSE17Mm3I4ImTQ6U445pq1qwlXqNYZOq1nLNZsdrj/c8TI6zwTsMW
	 JZKnJfKzl7U2edoHGk97QYit5yJXIxZAB+zim+C3xB8Oq3etBFrYXRbcPAblVIFvVd
	 kFun6khqMEUHQvqARnnJOMxk7di9gYdNvQya7YqMTbwwhVS+pyzgy/M74S8XxajUzy
	 wzFtoXabTSNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53271FA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692425433.30896.1653739751342366586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4a1e0deac2025d2708b876893b1a6af4c37dd0539f94362b8be55383ff9f87
Date: Fri, 28 Oct 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666924254
