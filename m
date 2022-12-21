Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E702F185D
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87AD6C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671586287;
	bh=ShRqVjBLzg2dFb9GQodCpgehn9ZZXGmjHmV2Cx5REt0=;
	h=To:Subject:From:Date:From;
	b=BZ0cxdeUTGhUgVptQR5H+C8s0gD8VBCi+9HyhJsmDHN8sI8E0VO9wECNmMa6DErAs
	 S/Ls4CtbQnl9BxU9G41dA9K6ZDHnhsffMPS+fZFSsI6nFjqk2+cGJelErg8TKoRp4j
	 g7UqMR3ez4xlle7YB+5Lugu88LDUE0Ew4V9Uxpc7t6DSXycUB9LmTbMKYFkgq52YK/
	 OI9nnHWrlCFHSOBtHgYCh0B55alp39PX7p0h8Bi1Wgte/jpgSFFrWtBjSnFIX50FcJ
	 CTmE61YzoAEPc8tq33hiF+THZRw+TGvPz3r37mF1qFkvcSGNPuO5W6JpTSNgC1rCNg
	 p0v1jzQuFkCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66044C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158628741.1654.8897873487213134870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b336b518ede94e8e6b1983d9c8ee9edf469d47dc0a5b21931dfd6b3e83b8fc8
Date: Wed, 21 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671586287
