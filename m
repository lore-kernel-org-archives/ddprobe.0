Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDBD1C03
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 734B4C433F0
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670760087;
	bh=pPMcjCvkk0SFN+hNsK/CHOhSlqQWy1mXHTMwetPpKhg=;
	h=To:Subject:From:Date:From;
	b=K+5DmvYS07ymbx9Ob0c9UTwxOk2innWyky+b9ytVBz+6HHouNGZycL/f3+gTIfVmw
	 XXcmZfAXI6PMxIdR5kBt8F0mNDFV2SgCPaqogDSvrTQkJ8omPwTn0bi6xxzEf5aBUp
	 29jDpn4je2j+083Gi8CN63Y937R7pnkNr/ALbVly6RdK8E1JQya/eEwT+h1k3+2Vky
	 i1H9/NaMl4ygZOL/YxF+yJU64nn/BhQqaGVBJ+9nTvrB7y7GWeLH0skRzhcgR2YUWh
	 jLEalPEtrZYZskclgoNINP94fGxgQUMuUhLpvRofcC8oq72AdAFp8scfV6ChL3bFTb
	 txzh7cCOWaz4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB0BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076008737.28827.1312391310993339031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c52eb66728ce432be14a23102c45654877db7b1f8fdaa48af6ba4448ed1ccbc2
Date: Sun, 11 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670760087
