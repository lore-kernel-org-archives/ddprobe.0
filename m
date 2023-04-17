Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547E410E3
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08845C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681699626;
	bh=xBwoWFII+Q4avDRUld1whcpQzsXFpBRbyW8p0iNNkss=;
	h=To:Subject:From:Date:From;
	b=doDiOmWRJvJxSp6j87Nz4JTyzoHcbrW9zCBRoF5imnIoqGuGbgy7QxSzCMcjKtNKb
	 q14eI/CxyGiiah5t946dLK4tDUK1YXJuetWnaTHWor7LPJ/x/BI6Jrb7s6MauZ9KrY
	 mfI6ul3G7zPgQcoDuguwGR1xrYJldN7j6v6t7SYZEN8RkdAtVcoBQniEo3eV3+J+wW
	 IDOol/Mx8aUve+ti2PJ59WkVa59PnRMBK2Hh33Sq22Z6bb0b+T/VPDtmbQnLMyVglB
	 Wh5VLR9292SMrLlzoAt2SW3SXPEb0w0O3ZFSF1lTAHbR70xftkiwQTgQEqMLYZm8p5
	 PLDC7OL/4La4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD709C77B73
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 02:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168169962589.27995.15764326135572659471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f41c6240be6b27b1f49352aaf28277611c479f743ff41ac8ee4cd08c420ffad
Date: Mon, 17 Apr 2023 02:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681699625
