Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6223EED0
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D39A7C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692444248;
	bh=vs5QJoKNM8mw2makUHjxJc78fqzhDsZ1PVYr7UV2OtI=;
	h=To:Subject:From:Date:From;
	b=VXBTrtHsg78iPgq3LkHuZINyuBS4vtG9x0j6EyveHTRir2xKAomJxaNV53p4F5K8p
	 4C5Opn7zBUmK/p4Xl/nFZuaZdLq/LQ86QeWbF3uNzdUiWDDKPUPDR4vbgtQ7I0pJLb
	 YVNVE6KXPf6XOZPiZ6RNBwiRMshSxvz1qnbo6f19znzdGrNgGSX9KFKKwC8QFryUOB
	 AYuZZFxNwF/672RIjexYvwP35R4ZhnCqOsMZjmaYRL6kiUjbsTulTzaxoAmxYSMzvn
	 pcBlx4GNzQCwkNjKA6PKEFh25vOFy4KfzcbPm93jVP/GzRaIqlxob5t2oV2ZeG+Hdi
	 memYd51wk9ccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47FFEE4993
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 11:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169244424867.8612.15570492967030575994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c5bfd50915f2cf0cd50e6d41d2671899b546bede9e7f2be715f63219584a9d
Date: Sat, 19 Aug 2023 11:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692444248
