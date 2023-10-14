Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A64C1845
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 22:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayy+fIzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BF6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 22:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697324228;
	bh=o9SZsn7csPxTlbusWGbyjJW55e3HYcqhontl/Wk60zE=;
	h=To:Subject:From:Date:From;
	b=ayy+fIzs3wsTsLOkmwu+I3fSCcTFRop/fyFoZ4wUY/K4ZdDlbQpA9hmt1uuPjSiHK
	 w+fAQQKA6ETppW26cJ6AC80CA7CIXDc5YkLGxmyLtoSiWqtl7JmPpx2nPk+ete9LXa
	 fxb3w4ktDpOLIHjGuV3Z4fnPUqZSRdxfOZZXYUyH74BQEitTxQtCrcQmyHKjbTaM/t
	 ivvVqhOPi1c/a2eDLFXgpS8lynjzROS1Q1sdbj5vyIlETHlQDpYX+gRfQGOOiQBhLC
	 ereO7tO1/3mvyEyP6eAbUVNXfOK9EASIbZqFc3f43/z/WQN92tUKb1SXgLIPSj9UtN
	 3YLUL8CSXaGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF00CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 22:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732422870.22593.3707330766226107465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4f52964c1c44f2317487d2d645925ecc06cba4d26aa3d169e248ceb02774353
Date: Sat, 14 Oct 2023 22:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697324228
