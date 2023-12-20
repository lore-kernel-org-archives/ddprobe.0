Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076A120300
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apDFnbqt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84136C433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703063896;
	bh=rlNfS0v0BtYtBv5w3KQT5NeDn0g+6g9jqsLtzFq7EEQ=;
	h=To:Subject:From:Date:From;
	b=apDFnbqtKODr4NKSo+468InHUXSHvxM2BCBzl5iXbFaExJRF7P9gbVBFSGZ5Tg4YF
	 q2M9qcIYoFKopO16zyxA9kA0I/rpv+5qorIm+sF1Ok7JZfFULqqKZbok8cJ4JiAYe5
	 nTgV67DArBOkrfku9vxhzfc42n5mD+fQo84oms6N8+X4u8K7TUcj4Wd9AMJ5CQ1gHq
	 FYzI8CzJBNAf9FmtMci04wGr3TcjBCrZa+DLNOxVCv5lkg/nBGXDn7zHLAYo8Oi4zh
	 gjUDjs+YUxy/JpYvsZQi1cN3nKTipoUCpWBFA/1e9RAv1fv1T3thqMRFBC0n9Q4ijS
	 hOSEYFNKblyWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6DFC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170306389637.24925.17606785832326604556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f97c795a5529159f2722da5aae1a71f505f33be6063dd0aba62a5cbd815c4e1
Date: Wed, 20 Dec 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703063896
