Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB888474
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C923C433C1
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669412454;
	bh=oyTUH2BYjLkgJFSpCHkq+CU2C3Bj0ckH1bCvL7owG3g=;
	h=To:Subject:From:Date:From;
	b=jifOGXUtDeE9wrY5XR54DATKgW0zoUe5C0w8p09NXErK4/8f8PhiDTcBUzTIt4S99
	 9uU4ARJfSpUefrgmOUMPneV5eZejd3hPvygxUfHG3DlkN584Kz30pJFjrjWduN+7mk
	 jLBgZE5Y9lIEtjREIB6sU7qOsHFnZd0zM5EPfsaVVE/obgB/zvAwTXv7muZo39WGBV
	 bFHa9/U8m+1oIQVUhXtiD2CpYicahdQOOZbaEImsgbEchsFAPM5XwfW2hRmgLm3gMl
	 nTm5r/V1ttxWJD6Otr1weBzwkry8VDax+QszuixdU8BfF/kxOfLe6tFNg13LXh72fH
	 3s5xOsuENaEiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54691C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166941245433.16864.15295023978618590074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7fb90961db5f6d349ff009b6ed6aabc61db24619f3ede0e196048c27114e1f7
Date: Fri, 25 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669412454
