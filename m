Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F18D2FF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10C6C433EF
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683404285;
	bh=d2whscZaQr3MkeVqrEx89wniRunYVdoTq8fgE0XSIQU=;
	h=To:Subject:From:Date:From;
	b=i4694Z8CVGxt3gh3ZyJh7lbK2Ty8ujn7enT+RhsRgrqaHgeitvZbevy3Wiv9aPVAf
	 QmLGHK1DqXSmQ5gNJtEfwBnbG17V7+umNMP/jgWQu/jAgKtOrAQuyTs66SfKqRM1GI
	 v115D2jTWmcjhzP371ln5yZYpq0a+2d05I08UT8o2tujBNrT4TQRlq3awtt+yExXht
	 0MEMLuE86En1Ebz8YIJMRu0biazMJJOJkXHUnrhhhGMTEdtFtgAR2XXihRs3DBJ7+J
	 s+1nkFJ4nrC/jQH0D42dNNx4d19nf1UgKUu6/nBhC6AP99DCp026Ogb+5f+8daYBKQ
	 41yjWIVLd0Lag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C765CC77B75
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168340428577.23839.6201170858299894330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aab3fff01beafd2d09c94062a642159dd6b679efa386bbfb0bad88e7b9da323
Date: Sat, 06 May 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683404285
