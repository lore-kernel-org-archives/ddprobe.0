Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F58A15B1
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLOdz7Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CE7C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697517428;
	bh=kSf+sNG285OGztwxA2jqrwdPlSR505sHzjA9upk4BGk=;
	h=To:Subject:From:Date:From;
	b=mLOdz7JmFDIuG7GPSaVosk4yrLP+CHQcjwUBP8fmr/7H1aK8Pf5sO4n9UWoZc+Nwr
	 f6l4KCEkIaBWQHCNuDRVvp0DVotDGP/x697q/PLQSGgtcGWFSJRePOITufvG+RdHdA
	 vGtjO/kpcYkJQg8xM0D1WTuY4tmuPTJBPx8P2gep1W03cXFtI2iQ+W+Jy8lZWAKdUf
	 LX8YOwtEsLQH31lKjQyTqYEioj9lsYPO2x42NgPkzpbdYlbgcw8uaa5SUmIHV0LoJ/
	 pSIHDnNu/zY3Tm4YkQkmNXuuCczbgXRpHqC6VMiXRuJefKHJk4FuZCh1mExYBPxEJT
	 mTG7D9EZY/SAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16DECDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 04:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169751742871.18604.6027884232221820506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe40dbeedcf3d3b3aeaf7321c53318b41a189870a97fc2f0d366b15f68435724
Date: Tue, 17 Oct 2023 04:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697517428
