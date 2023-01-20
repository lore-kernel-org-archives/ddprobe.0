Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4413F33C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E3EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674235325;
	bh=eu2v1MK8ewMvU4mOxGwrSPNzkJ7pyw9gLCCMC5Q0svU=;
	h=To:Subject:From:Date:From;
	b=bGLhsw3DOKgWxP2OuF/8a7/OfZV3/T6X5FyCtZytQKQNlXUoPGr96iqg9+Gyj1b0R
	 yTHERX0Xnq5n2TmWBuWM8Xs3k3feS3CuChw+CKf2LUQ49f0z/1hPjKiT56qrwMz4FP
	 hx9H2blyoC+tT2YYy20dfmB91A0BE5YHqtqzMTcVLl2XFp1N8TG0sW4PtH1Bhf2Xvj
	 /GB7kmx5eXw04Mpq1XNIZrBJH6ZS3iVDVhjA4gmSXiJ1X6WHS7nn6VDtE65dHY5f8R
	 rqjZPSkfJRWc/QUWr2E8AY9JnOJ7TBDzIKrRraM3Ga5Tq9VaFtr5Exjn9ysaJ9vlSg
	 pH9DwGZL0FStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7690C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167423532580.3307.736228465686919594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27503bfa884eb094915adead42c37b4823c44356eccd465bf459b2af7eea8e34
Date: Fri, 20 Jan 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674235325
