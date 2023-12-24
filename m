Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADEECA64
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rV8jVw4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C43C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703440096;
	bh=SS7G6V506mqXE1kiSKxC/zUPLUAxagXT/LD44Eh9gLI=;
	h=To:Subject:From:Date:From;
	b=rV8jVw4Zrjvq7itvhDEOgsR5jSf356cYusGL960slBfSpt1lSv6nKvCa4YF1murt8
	 FcIv+GLi24n78hxnQ2eyJxLKTxJ6Gm3Zagz7FeSxeahVYOJHuS7bLI/9YGnJMiF91H
	 gl0HA6PIsRFNq5QMUE2SnFhkHeL0ahZ+MMzqwX0xnxb+m3PE88gLRb87BFXu5ggSfT
	 W7hOMFwI2JBsv0rA+7nlNmnqQfCGkwbTZmhpzRIyGni1tJfaV2OVr2cD+vETrYqmIs
	 YASZWRrG0qkMGqqw8pMi6wkFm7D9NWYZ/VoaujxdIT8azUmV2RLcZq6XHeCbblS/4w
	 4hOUXA1BSPO7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78483C46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344009642.2252.11949710854920517842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc737f34e0258fea95be741f4c798f9b4271882c74c1a186fa23ed7522f5212e
Date: Sun, 24 Dec 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703440096
