Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF0A7E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE7FC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672966887;
	bh=+ATtb+Dd3uqjey+N1Y2RWU61b5GN+0z9aKJfs+3nACc=;
	h=To:Subject:From:Date:From;
	b=HkGBwpMZyRCu0dOynwWEE6UB8Ddf4t/DkWV7Iwj/MdDOj9GvfRhmiaJmdFO5/AtQL
	 f9Tp2lkcsjAKnn/oD1pV0FdXrdQbrACP14ZsEQ3o6w9lVE4TvM1fzZ2rrh/5Z226eg
	 JCf3yBVOp3lRnPLhwKfsnPoSbIutaXnlpvpjRs0ZCqa1aOYPR1iraUOm2QX23lWn+Y
	 P8dCAq9OD6kyrNH6f/9aycNJ1d3LZY6Z5iM/2IYMBr8gVVnEEKAvzWmSqGCAO5rh+C
	 FxqjTeJ8B4nE2CupsdeUEtDdmgyQgYYadOOiw2PPsvEaF1P54QjVete+VLMj4IWhTZ
	 07d37CNbdX2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608EEC53210
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296688738.14260.3884258273855543703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ca449c6423e5a1ecf543f736b45fd08b57f8a44ab3149ceebc145714db6f964
Date: Fri, 06 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672966887
