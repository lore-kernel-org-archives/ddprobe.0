Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D9C5C83
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CA5C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687932188;
	bh=QT7WkCcYX53L0RJGoBfzVCJMKWPFntYM4KVLgs5B5bo=;
	h=To:Subject:From:Date:From;
	b=uXLbL3+5xPK8zF9SswLDhCHrFgT7Cw/MaxSticwamLWsDNW/QmtmtPWLJ1smJDnA8
	 f/kgqt1bxXVBk8qvWVIHnvAjNBiq/GFJB5BPie7sWriDjBOILVpG57fP4Xo0YaUc7o
	 xGUcln06pAN2Lc5SAsPIiiGC5Y9mzOj2qWQuxZ9jO7hlEiKtflr8zZ+JYfnle2RFio
	 jLHnPibQ/1Ycv9cnzFfv2QVC4YOvyDCAajy7j4kMYqwrquC2bH++31JZK1WOJG/8Iw
	 fx3yXfD+qjn/XJyYeHAQWqfvpAkHP0J45X4/pQA+GJJs8BD874KsZxqZyrkjWczPEt
	 Jgnjnui/AX9gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C9AEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793218866.7954.6029709351905778540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08c9888d7a9f5343fab41db39582220688c93991c3acdd6f5bfc1e1642c3108
Date: Wed, 28 Jun 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687932188
