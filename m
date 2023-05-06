Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1091FD5
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA6BC433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683382085;
	bh=qRzt4HkOjCIS3w5vPMODp6OuvKEN1r26U+OzUisY3Bo=;
	h=To:Subject:From:Date:From;
	b=D+m6PNoEhGN7CSa3qomHHpXG5QsTBfxKyzSWW1nSpiHtMDj4iC7MeJTr3OnkHi2Xe
	 lPQKTsbG6JTluGV5Do55HtqUhF7bcKmuyI++MfHPj34qdToO3qLl/UZNBHs1Ui0nex
	 M1g241UcfOAa59+pF2nvZrY8oQa1aiMa/fmJA+JKJDydxINtAj9jRS0Bd1y66l9nEu
	 BBqKKc8XunPajpKKZAszxNx+mLwneCj6UIZKt/bCSLKyb0RoyQzL4R+Q14f2rFNVJW
	 nkcIp354SXhEuQ2pm1ZBrRJ8LETXmZK6PO+RYsiz5A+I179UnwjMbswAtnxn9RJvkw
	 +hLsEoixXfnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC13C7EE24
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168338208576.27502.8874545332008684201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbc68fb014fb09784def0959ddf1d56527fe479f3710f5f6ff5470765fd5c437
Date: Sat, 06 May 2023 14:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683382085
