Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408DBEBC
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD7EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677651365;
	bh=OVLXN5ojGhOgAPKmjm7TBSvw1R40YyphWHLsKHqZGqM=;
	h=To:Subject:From:Date:From;
	b=MQe8p+rROfbbsVH1t+f10acDPtilEdK6/uW3RU1aOJjo9cvZV0gZrfEJFPfQA+QUG
	 V2405hxxe4agoxjCSwTSCkiKRmJs13MYbHOES0Rtx16gIzQadSt0gIqv0ADjMCY76i
	 ZSaLpLTtQ/xfjH0BZPQkYHf+jJea73xAZunnLrux4KhZ2YiIzbHOb/eksK1bxD5lPw
	 IcapV2U+xd637E9jQize2b8bE8GGcjYTQhIuaFHL4gqcPz3itmF5n5thTz5rlZy1uo
	 lMs/nHmFCnZytvCl5voTNvukffooxKHvu1gAVcAKEQl35otIjJdu8gKIgUv5fxAzpT
	 12qgozisj4HeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5167C64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167765136577.18784.9700953158495678059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e351f66a8fd3abed9cbd16cd9b65a6306708b147a4faeacfc2d972f52ceb4cf
Date: Wed, 01 Mar 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677651365
