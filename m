Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4734B7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7259C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678571165;
	bh=V2I4lgmdBIrIdoRDKboqiGL2Y4Ouzcy/smMDYbzm0kQ=;
	h=To:Subject:From:Date:From;
	b=UhMDZZUgMZdgjdCyUTnJ8UWCw4al7jPDpmmZaCr79lxsz7ps1SAx/oWqXQS+7fmZ/
	 gJhRx4wW0fQLRvJyWpRq/bBz9jOPlUXwCmaizqcqndfMSRzY8zQ7T8alNSNhuFYkYW
	 O259qtxxEPQnStp/wh+6SXtQMfEbWqqiJMz6bhUPbhbENeu0ylQSzRYoCUlQyw5L8x
	 fjrDyrOHri6mWa+wtpN5L+1fu2WPAWma8bGN5srepNbuTn+8Cjvo+q4axsPhcmOvTX
	 adwaBZICHwFygFsL1WkNRASiTd5OkD7n6vdbJz9L6IHT9YK+JKAEtzfEbFILt8PMFW
	 PRUOi71s5H9Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA8DC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 21:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167857116575.6999.16573564830155781502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a46dc70c0e30c7c1df0472a3298f5fb5eb031cab23c445296423f6c960f8d9
Date: Sat, 11 Mar 2023 21:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678571165
