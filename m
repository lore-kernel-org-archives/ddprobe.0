Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EF339AE0
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhO/OzqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8402DC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704869897;
	bh=XzCqvjJ2V6GGEjyfBO226rvlLTdkeo7DH8P2vKiSoyc=;
	h=To:Subject:From:Date:From;
	b=GhO/OzqQxv8Dwz3+wwuzffD6TW8GaRgfN6IxfR8DouWwWO76L5aT/0P2YZRk0jvRE
	 o5DpHXikIsEOvip9z6ComDpTdQCYBfkbQ5RVtDy/9PvoafOQclDtG2KzvIbBq6WAur
	 DGp9BSbjjlJuire5u0GcaSNCDtg5H5HDt71qK+QMwQDlajhU8iBywgxNfPZmjtgz/i
	 pHErSm9VQ9pfkhPvbGZsnfKwHWGDl1Irf/lpChMdMdmUl+U8Pw2Jop/Dg6z5sA4e5B
	 3fBdSHbeBR8uW94LXED1adZ+s+LHvqiibgvJV0ERIWARGcimA5zmTV+sD36xfHueto
	 zYZ4LxS3UNr+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675B3C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170486989641.18523.5035391244789634633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eba3d2ae35b65b0326fadf46ce69f7ec1864015c975b81a5a5be0d4ddeac162
Date: Wed, 10 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704869896
