Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF41220EE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F712C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668750054;
	bh=ylcxuAu6G982EeIjxkXjKsbmjYTK6CIGJ9Bkk7i69Pc=;
	h=To:Subject:From:Date:From;
	b=nLP8NdGXtu1ghqP53Ue5xGEh+4dJnO+QqcaRMy5ajU3LNxkGhLvtBOyeL0diBuPu6
	 rgrCu/TQxG9fOS0nTCrh4A/siWzKULW9ByKqB093W38TLRX4fMSYNbR1SQWDV7HUGm
	 5wEbw13BM/zqdNKUG5Ff6AJKQaQmuBbg/X4VfMaC7HExt0iAjOOcXOweYpv1zabfyx
	 jmhU83UC7ahB7SEO5jjDdA/2zz8E4cBRBLgjjJ0kvhH4x4VU43ZN8LqgNhM3kxYgeM
	 h+mm8kMWLjbw9piB8yCeY3QWMB4QFu8MLDkKqyGvBOTRwpTB+s+RoLWpUln6zUKzdq
	 rQezUZE0WwYOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A02BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875005434.4223.15298578593950041985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c78be4304c1bc8c344fca758cb462837791c3813048b0f5b5b89bd1f22e3523
Date: Fri, 18 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668750054
