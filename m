Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E606317C9
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93D77C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671847887;
	bh=YEy+4RN/l3Dyqspqxqjn37dDU7CfxRxWC9cblMcsmL8=;
	h=To:Subject:From:Date:From;
	b=NJwuYNKPqaZ3xn0HbgbEj6k96WaRKRR/Hu1TL35fhG4P/67LZQMUE2Mjfv+u0YN2k
	 +DICspnSL0xv+UyyuKDCDEu0Ov+4IrtwOU6Ef5U7sZUfwfw4m9zDzR6JYM5n9FqX1X
	 WHOCrUDgxBeIfnKa80w4CrHkjie6csAQ8IL9Per90LeUUXsE8+RusyOA4OGONDwgY6
	 7p143bRyigFh/vsF/Bo/q+TPV2gZKCgPgpY2YjVJihQCnuaCMqIjPoIU7PCpp5JNdn
	 HWOpLmkg5x3l3euMly9tE4JKkJ4MoP9GkrL0Mrx38+mK2kK0jLNM82wzOirLCkFEON
	 RWEFEgWh50Yrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A09C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184788744.25578.1843422955363765805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35fd367014ce6f4b62cdde33958613566567ab86a72fd1ea530aeed86aa2c96a
Date: Sat, 24 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671847887
