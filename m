Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BEB3D80
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B4E4C433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664896253;
	bh=damsHWPpeRmA3fMgTF0YgWn2YU3Meq98dCtozTD6tx4=;
	h=To:Subject:From:Date:From;
	b=V4pNlflTdOWCiYd/lc/olmjGYjIJdzR7ujgn1H9RM8XC6wFn5RP+ghTSDb0hwX0i+
	 ZcN1gSVjd/yt9jvF3aYduUh9bpnJgrvqDcKTa+a2oz7sE+Mj9vW9mNEHlZfJ+aSKQk
	 C/cB2mCke2ZuGYG0K1GCkMpSo+XGZ9tagwXp3F/65WuYWgqJDrxa6IFcQ0u4iNZaJ7
	 t8bcseT5LOQGTp5i4hy5o5YBqw/AfjXdgwzV0KjCzJsb12hzxL3rZP62Y2WuqFrpsf
	 gLlQYhjRNezNHzVYg1MRrWsCDQfugu2PP8H3UPYTRVxfSpumOJr7fjmrV9lt02fK2h
	 jFYlzZKWzHEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FEECC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166489625331.25081.16944860760485854797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e3c248d0d2bebb9192981e75a06e3b89e9698c1772fcfc11f8c8a861c4bd5a
Date: Tue, 04 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664896253
