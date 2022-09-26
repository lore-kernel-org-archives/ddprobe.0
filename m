Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B3E371
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E8ABC433C1
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664181053;
	bh=vXsIBQkcddtJQ0GSGL+qLxTdbFvhuxlWS99c2NcFWRE=;
	h=To:Subject:From:Date:From;
	b=FsVWcqyBs1ri0pNMOMND9S+bEZMt+NjlxihDhT4igUEX6+NaVbm7mTCm5bRYl4WfX
	 +G0d5+JJOFyC/nrvsToXWjOPHOkTvi+GfJYHQrCjKOqpUXeZvRRDWWpSJnvKAFyicy
	 Ptid8VzlnQc11P6dgpkLrHpOXHeJa8bVhMPNbem0yXzvr1cK6C3RlInAMF36nbiykN
	 KrPU+As0uq94KcYj6zaUSzOTGJdudbkAAJ/GwQYwBDushov8slvaZGyM4FkPvL/uxT
	 xrLD4laq7RhfqiL4bWVQal+lWejs+zzPe0q6nvm3J7AU+BzyhffRZMq24H+DMZsfjy
	 uYsiukKCxJA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5287CC07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166418105333.16407.8329045170229964620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35e63ace5fbb9c0e165c327553b0eceeb22aa3d2191f590ceaca3c18a89f6b4
Date: Mon, 26 Sep 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664181053
