Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B848F7A
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DAEBC433B5
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665632453;
	bh=iLp0XfF20E3hegsVVfjzUjujzMexzrOusVzVEnaSxgg=;
	h=To:Subject:From:Date:From;
	b=CQsZ8lm17CD+I21u8XK44O57eHlu6tu3X9DLPL/u0OjOXv+1OuwOyRR3bKCn0BUw5
	 TUq2wY/8h4IW3PN6Ch1EGF9jLFtC9fwswh4KBK58hUfK5zNZgZWsNSbi73snrHlDsv
	 3irQmRY569BZL2usxC4kupd9kZcBTm7ykDOOLqbCEbSl+3aEBJdMG6tGxIb3+C88HZ
	 7lTi7slzhuuC+svTLYlypfA+To1k+HaWO4iC7hwxOZaeznjcyI2NFUjMrFlAdqocFg
	 pCq4m3UNs1BPtcWf64//EFZuCQspGVuY/gvaqGKB27ZUy4+Na+5xGoSrm4LyuHZdyE
	 xHXNnOuPliQjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5200BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166563245332.14051.980020863604648306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902a8e532dd257576c9ac8118f1013788d398583aaac5995d0e1233c24abdb67
Date: Thu, 13 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665632453
