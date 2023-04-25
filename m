Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E083A94E
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E605EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682461565;
	bh=JTMF4UeCcAbPWZraDpAsgxPXJbRXQFj0ocfjwV01juY=;
	h=To:Subject:From:Date:From;
	b=exbkwwv2oIPC4yjfuK4OyLvB6NyLjFDwRqpeKlxJ8ExXtNLDDeLVn5TF9zfgsER9A
	 FYDjpjVlunBhT1tJUNgRbFOOV/7u5C95/juz5a9lCdUpsCwcG+Da2g3ijhwKQHOy13
	 nwSB8ZIDNwVSJc09+mLCN6xGFQ28yv4C3czFzGF17n9R3tHRWaUiCNcNy7ChnXWyVK
	 GqALDLayo1q92V3e/4ZQqU4OUUXtMlKBnWmPhQRplXfdD0vXWNgXBYhZ60ywfgUd7N
	 UR6vIqiMgFftOaS8tOFCYR4BafQBktSiOnUGDKldXdn82CBfkYkHL7XCBIuW8kLzEU
	 sH0AbMbFSIpsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C7AC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 22:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168246156580.31108.16192840733277304148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586ac8f3aca24fa08e3ec114e538492d7dfdaf61f7b5ab2246df1b0240367a3d
Date: Tue, 25 Apr 2023 22:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682461565
