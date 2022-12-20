Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57EF7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83BD3C43396
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671574887;
	bh=lgCZ6ml9f7yTGBC+I1Dz5LEbL1k8/E811L14Bx7RBdc=;
	h=To:Subject:From:Date:From;
	b=Cxc/Noiii2l2nJGaHzZRbFKPqAk++2IlgTKR6Y8Xf8/pfQL88paFBtCXUvVxeZ0CF
	 H+y4+d7vM6sl0jMD9zYjuwr9Eyu0STFm2VEKs6hIawegIx+7oZSeZh0tQYlbR+5hVh
	 yR1a2JqwZBL3qnTdHZJKAQ4IsVuWLXOLdRqKvneZLe2Wnx0cT9CtntRYVBecCqar9f
	 JTf48nSSfep1SjN69TTgtKprFrI9NWq7Mna0SHw0ta3fEWS5vpeSCKzxfedLIJT36a
	 7nrqL/Uy3QN05SIpGQsTaI/zuilibuUD5Wk5lEmJfpIAGtNLSPJUtRv2hHJdQfgt23
	 2Vzw90ASoXzuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66810C3DA6E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167157488741.25398.2743646611993094615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf26e73586ec228bc73be373e9b83c4faf12cdd5d4b50f633ae3c1d2b5344ea5
Date: Tue, 20 Dec 2022 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671574887
