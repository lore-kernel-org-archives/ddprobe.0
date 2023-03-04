Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352611C27
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2663C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677950225;
	bh=CZ8jOYkusAAipRz8Bo2gwpisc2avXPkA0ZURxdtdZdo=;
	h=To:Subject:From:Date:From;
	b=fzNnS5TqQSklLaT9t4ZAidbTgHSsYVUgJKMD77Ss2+EOGS96xY9Kr3ZiiaSEYzzLB
	 CrrMVzKmLvE7hcI1p7iaVqSJEyiQ8r9gOzIJ0EH2Q9OLMyGt3W+1ZZ5FrYvGoScIRW
	 OL8UTAjEbJyJXnggIH2qPM++JiZVqFt+qdL7+cO7YsKy2JR/gE0cJmRRbERN/xhQeJ
	 XcDFmb9hiPM8Y7v3Eb5MXDSkT4+l3H9B9JnYZ/mIZTj89S5pgIrls0rPmQaYdD8wNG
	 nm/j695CMTih16n1sVXx0DQITXDcvol8FgG6y7hYGfx0L0bYFNGpP0WvXVOhEavlSw
	 nr40HHlLEQbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC0CC678D5
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795022575.13677.11361492761143441965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10222fbd852cfd706377dc5b136813c43a4e2753013ecec35a36541bef73a33
Date: Sat, 04 Mar 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677950225
