Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34AA7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA0BC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669497654;
	bh=iFl8kc9WcydCuKa7Zx10CgC6d8AWIDCBRrt2iueDywI=;
	h=To:Subject:From:Date:From;
	b=aQPhElzkhZ1RphRJbUFUVoKtES0QTtd76MnPXCrqVZ2bRRb5U5WujX+hsYCUCXn96
	 wflOocGl5KdIrEpEyatSzxd5dRkE4QC3xp3An2MGf2SzqStmi3tMVpNZOG/LXI3Djo
	 NEpyegCnYizC/LIOqec/vLHvzBSup5npZofGqgYFpRQEwh3pRn5nqacI1zm3MnCL6I
	 hJYkm2XrWvRFjZVn6mItzvfpMtihmr0AQLov7ZPrBaUlQWbFak4NWar3kq5r4qsFB0
	 jjjMHqWJnj8szwdStf6wvuwLzX74BiPjVBTJKLc3YFe8NKteKiJF9i7o3iWivXHlcN
	 ShBHBU5Fws5pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5065FC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949765432.6722.12645153143445635512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7512c6d83df36a64eaa19c4a7596fb56a9dd1c2aa6b68eb02c36b90e4d50402
Date: Sat, 26 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669497654
