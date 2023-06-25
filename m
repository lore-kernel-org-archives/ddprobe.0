Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1AD7C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD93CC433C0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687651388;
	bh=HF1JxZCpxzAAcvii2hrRzDWNTrUqu5nbOCzDsNFuWWU=;
	h=To:Subject:From:Date:From;
	b=UATPohZYFST3hVfCn61tdqEjXxjgmVa9BqvRIGgu4NvvtUk2DXHJJ2OdM7KTSwadK
	 1FQP/uVrlwA1KSdmFfRW88h7Wdjs1qP4Gm9c+RV/c/s1bbBJmC0LGD7YIJ5wGAxfK6
	 IdoOAF3QRK+SB+/dlp9qVUPca8dQ8rmNEW3zGrtwthb8drBkkga9oCXGlD/CRVzaoN
	 GqoB8tS+zLcFGRC54i5+mJt1a4LooKXKVTjas/FZGP0TtA90EcjfPpgze7/gGTZmmM
	 kb0ht4clQqvCvrfVfiWrGjl3m6+OjJhGNB7OIm3MAwnODk1OTwFjuNwCa2Ar2u3/Xz
	 04gROUY3ghJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB592EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 00:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168765138866.10334.1496475677631439891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e55000cda2a22a939148b08dfef2c12b120f957f6069e7c118847858a85031b0
Date: Sun, 25 Jun 2023 00:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687651388
