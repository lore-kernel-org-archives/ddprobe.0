Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C90337CBD
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLondKrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E78B7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697641692;
	bh=l7F7j/dhPJ0AqBW6RjhZxijPxuMCBz7Lmmeoc/zp8Wg=;
	h=To:Subject:From:Date:From;
	b=vLondKrw/DNcopw0Ub+SAPAhIJ8hA5cNvNfkJgg/XCyNyR7XvbSs/mlNpXcp5nFsM
	 3L0dC6dFfWHgDv8Ik8Ezey+aL6yJSYQ2yRouPaGVR0bAHwdMnql1e76jc+Ic8yUItQ
	 cvvSxU/a2uPOWZTaTKGoPSHOgrUX8eiCYrRejmSbAWavhYcCXrxw3Bw935mE05BMKu
	 7adKJsDh5tUxoNT9rSuVKz9xLDL1aQsfa5vjC2CyhCjdxgds0hnzl9Pl0YIIUWclEl
	 FDpVnMEmGO9n5HRyD0Mrl5M3GalrYb3QuviHZPtXSo5iN/aR7MYmE2n3KjHkiE+arC
	 cAeuh6Uz1eztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0C9CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 15:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169764169283.30128.17481401232225117835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47f2dd1ba4cb1293e89ec6be443536268328171be72fd4cfdbf4d9a4621b4b6
Date: Wed, 18 Oct 2023 15:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697641692
