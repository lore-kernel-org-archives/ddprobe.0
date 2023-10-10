Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0459E2744D
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 15:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awogvlpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA815C433C9
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 15:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696952228;
	bh=kG+1AsqtDudElM/D/Xx5LjConHHi+cZnnStxIKlwWc8=;
	h=To:Subject:From:Date:From;
	b=awogvlpyX4oUR+0aM6MymvXOfq8BlXLXXxVPbFIIMecvFrYgtk2h1tMO+nhKdlIjT
	 XGy8QEGL5q966uiIfAbM0Pvnio5FC+1YYpUyN0A1K7oyKMAlr2cVuteM472Qbtvbnc
	 8RHeJRGNHVR9rLjQ5HO8gVqLvHWyMsstqqKVfnKuyP/PAITQgYbTP45MsvcTPZ649B
	 QUCefO3GPmRNY2StgXKcVTmULY5lP0bKMXsG2N7YxgZMWWqZoQnEdeU69Q5XzogH/4
	 3WttjL/OBXG/LyPOQ+7GiWE3mzW6qa4mk4kFIJ2r6lQSwww0LlHRbmS0Cgv0lkWrmv
	 OGwfJgARuP2VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC305CD8CA5
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 15:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169695222869.10350.14110341976673135496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c366dea4ef047efa9e101e2528cc2c070d2b189194ffa833b7b895b98b40efa
Date: Tue, 10 Oct 2023 15:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696952228
