Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5827C1549A
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGDxZnjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A53C433C7
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697804296;
	bh=toFgKVNv0tOTw3pkcgMIQjG3Ni48vbbVW3szFJZOt3w=;
	h=To:Subject:From:Date:From;
	b=ZGDxZnjTbXGNCkgETBTRBrSTT+FKedxvgtl4fv1HTpotmJRSEpcCgkbNsM7fgRBNG
	 F/3Ee6qv87OACkF8Ebew+sXNvLNQcMVzyCLWTuK28QAcbnMXyI9RxNJ5Ch3goK9vyw
	 jCvryD2vv1CjgOEracIHA1crzSB2iUUnh/+1wjmfZvZZFNDVDkeEEerILbTdetOR/Q
	 ZeQyP/iAqdBKqSzyF7+B3z6FdoRLPw4KM1dwm2X/Q0MnRXjpWysQciQRYHrGCVCJqx
	 4V82skdBHQe3EgdQF/g0aj0c6nj0no6n+uZHZqqybAem4dDeybWbd3Je2QhW1qtTQN
	 75FFjupcJ588A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83570C001DF
	for <ddprobe@lists.linux.dev>; Fri, 20 Oct 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169780429649.8668.8451101368314652071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a2e80abfe6f560b6934c5afb5de73e024f2c15c11c84d3b4f9b0688595ec5f
Date: Fri, 20 Oct 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697804296
