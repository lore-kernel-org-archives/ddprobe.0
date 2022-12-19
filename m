Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0BDEC2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A635FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671429687;
	bh=95tRriNavI8FsDxGSMvJAmJRDNuuqWLaj7SIRaeBh3Y=;
	h=To:Subject:From:Date:From;
	b=daZJpCPkdtQwuGxQ3CNBFG4EL656jcR8Ox8HLz7oyV6dTW6Y/2zmrk8cqwxtos5kH
	 W8UO6ZHcrmoeVbIK7NkIVfDjZfjwqwky+UNrhVJWIfgDZ9WpCgtA7PW9ZgSteE4o2A
	 SO9ALj5cCVJLzrzcpkBHJcOi+Jvh2XH9U5mU2Ipfsy6Rb6hHTTBBAOrm1mE800SwJ8
	 JLMNPw52xa3PLQGM5zestGVbQdIwJD/Sy9QdctCPe1uuz3hXDQnPGce8b37ORKSdkh
	 z3yerTMIDyc0BRyx/dIvWSV33Bl6SXxiCE/U/nD9A/wQ3ZoqkHVQGmjsm5gtCW6u2O
	 +4QgRe414ZOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75ABEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142968745.25060.6277309830564094645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53fa91a076b524b58a8aa96d4c4c25da357da1c636f4bc8055f614e8e5aded7
Date: Mon, 19 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671429687
