Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716301361
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9CCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686699428;
	bh=+L0xw9q5qeVIgO1jOOuu8gAZ1/DfCZ8tRyLP0SF/tkE=;
	h=To:Subject:From:Date:From;
	b=poBzXQmvKjUsBLPHLxW7hAm3v0HTE0qZ+3HH1PNjrYSeQrTOL52pPI7Jiz4kolQkV
	 DqmpmBtFJHUGRLm/aWAbqUoHaOEd8JQF+sjuTin6uyBiTQTyB19ApsVcL4Cm5NDK9+
	 UVybrmbM43oHdt3Mfslcgsh6mub60VrmsJlz+yn5yEnLjOUF5ovA92NDDk+UQ0faeu
	 A4pyzGw3SHSxKTn9Ze5OBN4ITJdPUZVV3XlcvRQq0prBNoouFml6585nUjf3d1DIRZ
	 bCFCjQ1OtE6UsKV6eRZhQCk1lPCjcdjnQ5fzjbFbcf8pnxXRnMWR1Z7zHT7/S3wnCo
	 jOODWU5p/S+1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB95EB64D8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168669942877.25964.10748196507149087264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ce1e8cc9b8ce535032d05a813d8abcacbe9ea152d31e1df207bc4e3096b94a5
Date: Tue, 13 Jun 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686699428
