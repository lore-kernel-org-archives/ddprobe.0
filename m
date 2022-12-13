Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C0479FD
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AABC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670968887;
	bh=wFSnt83tNlLmQtHRXcZcrGCXPp8uH55AWJnbriZFIBM=;
	h=To:Subject:From:Date:From;
	b=SHqQOuxryfXU4LT7sbN24HoZM3/AHHbZpIaN3OMfJRTJlJrsMoLjtOT6zsWJUH/cE
	 ehkuNFTDh6YfF1Qfsh5iFDKB72A7s91SERm3zQm767FfI9vGPL6ImASqA0u3kn9zPB
	 V6sVw6Q9Asx0gckTqU1Y+Zx/76LFF1NW6WN4ATT5rfISgHo4d4awas1P0Na7Phlw5W
	 6gPY6N4oaC7gfcVyh+lSwJ6QjFV5VGfYJjlrxETJcERhS4+UsVLBajNItDMICciFee
	 Xnq9Py3hhGXqmTHPyNxyhmTr2x2rRCGGPVyq2YNfm0XNB2s0KadhCbGoWxL58Bh4y6
	 T0Kqkd2idJg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6958CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167096888742.8376.6032605582740377298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c4bc815e42c8a7d9b0d610cd6d2d351b92b59712968d1f62f81b416d91b02f
Date: Tue, 13 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670968887
