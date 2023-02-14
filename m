Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52ADB7E
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFE70C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676344446;
	bh=n6Kb7gvEtfiLXw+DZNP1ZfCO9eg3SaaehXQEr30T0Yw=;
	h=To:Subject:From:Date:From;
	b=AZTV5UXaCS2vusqiBDHCdo3taZaSel9It1QS/qJVE55tXhSRE5o3CWzGw9HwreRlo
	 WRJBq0evzPA5XxxOn/FZHGRlUv2QjlVZ/TnsjbutPiq9qlCQ1w9nNR4Vus7ekMJi+i
	 bK/wX9Am1HDGrsO9YV9N8RhQgEpZ1KVLh92PjQEdZPrI+S5vdOkK0ZLvOVzaVD0NsG
	 +BsxCq4AzfBkqfq9x9ShMKLwISQmrXVx1Yo/xcJUv5JPdRBBnNUiochBNR5FYf247v
	 yCuXTu29olm9RVAfyqKVdIxh0YS76TzUe61YPPPPnx5FgK0rhukr15qNLXCFdjP6fE
	 jAUis618yUqiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBBCEC636D4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 03:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634444575.17456.17400558235237975928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17fc4e97eee62b43b44c194a9425fc579cf6b31a39c5f52bf7144d88ef4980a
Date: Tue, 14 Feb 2023 03:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676344445
