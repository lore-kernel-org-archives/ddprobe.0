Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6537BAFED
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 19:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F33DBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 19:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681846266;
	bh=zDgsDhYK8yHEKco+LJRdjVJDVLbiQRXwxj9BXXYgJ2I=;
	h=To:Subject:From:Date:From;
	b=cFa2rCWsNbubPcERLsx29+5ilNKkUrI24clt/PvbKpAoAK7jActQ+KM4ss4pDzab0
	 HzYjNQRRU8igGLQXKYdqPURJ5trNyYDj9LFDR299417C+cUvDfrE0gUAY4IFOsazjb
	 i2y2weYTHDGbfDjP01QowOvfg4qqp1yj7LuuYpVytRF1KbcVoFvB1onMpiK10bi8JP
	 D9FzGe4Xgu4ClyDfy0K4AU7Xagar71P+Eap0kCDtsg9PvSYw7vaGHNCJqRVGOo3uUW
	 I4UoQXcYiq3biSR7f+VcNV/AFImwSaKnwCWn66rI1MU6/cSJmgVeRc0cDn5068i/Md
	 pv9E5zhL3AA5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF935C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 19:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168184626583.25243.17164642230170266300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0949d68e71f53611fe1149a4a5ffffb0885e0d71eb3e8ecafe2a856dd81bc5fc
Date: Tue, 18 Apr 2023 19:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681846265
