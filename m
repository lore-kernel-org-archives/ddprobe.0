Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB90FA473
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDB0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668798054;
	bh=JIZvcAj/2hRJ9YrH17wqIEzVi/5Vo5cF/gPCSSpV9oA=;
	h=To:Subject:From:Date:From;
	b=Qxb4kzvXzZnyKvdFH7js2abdQXEk2MIPzjB/o4JUEKTKBseH9NUHsk/n/c+zebFjf
	 PTeZlbKcJ9KG5j8k5J8+wJfn9ztddHo2XMV1B0grOsNCgynscguylIKJ+835Q0DG3/
	 v8fSvqSNk3KcYdNjCkdK88rH/wrGY1KzWS9JEYfNYtIOPtM3L3sTApRkOHfrczuwFj
	 6sTlL49lK8Aw3kavjgCto/nP1OcRtU+thDEKQkX6jF/kkrIe2E6F0WMV4DddP39UmY
	 u301v4f5QE27vC+sb1xtSPX0x6klLi73FTYNq7GhkUB7l8FYci1c9RhcGeQsyBIR8S
	 aDG7kFByOJrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F384C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 19:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166879805437.22834.15117943422937334139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad78859d1fad12e324efd0a2a86e5f93249f417a253d23565f79eb9b73e4544e
Date: Fri, 18 Nov 2022 19:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668798054
