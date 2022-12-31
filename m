Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CB67E
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F67C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672496487;
	bh=/2bXTp0hgNZs85Va1DUiyDfSl7lvJNUQCXxayL/PdOs=;
	h=To:Subject:From:Date:From;
	b=P2b/OfDfawE/MuYnRPtfk5BqpK8LSRznDDnhgI41xFKvA0hfzfznm5+Wbe0nx1asj
	 qMIjF9CuE5mJHWbS+ACqC9nEdIC1Rsc+Ju+BcnVb7DaQ6zZ6sf+RjnyeIGj8C3ELD8
	 cl1dQhQHTMobQW4tg9Z8TiI9+Qifx2Ta7JikgJXnqFWDFajr2FpTrvAT8E4Sjvaa0r
	 vFP79C3Jt+RhfPZSymtKbo/2hC3ozOcEX7QJldgeGlsKjPr/cdxt7PsSzgg+RXU9U8
	 HYwRM8/nBBor0ayVfoS8VFqaYYVB130FkzYyfw+ryQEJA6GSh/+9SnWBNm3m0Tm3v+
	 51LT9/LczOkgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CE3C3DA7D
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167249648741.21780.16621311637735097135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2c4638c09adbd247730705a8ab0085e6a15714573a6df16ef6c0fc2b3efd92
Date: Sat, 31 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672496487
