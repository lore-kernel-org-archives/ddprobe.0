Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DF0A956
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE706C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685695625;
	bh=zOkVPizdK1tEcJ6eKC1nCDmPpp1zruQAcNbnZSrKKxo=;
	h=To:Subject:From:Date:From;
	b=GIW8qjkI5/F0iKjnm5x8lXm5pkkOYT4P5WAvJx3hQ5IUf1nKiofbMZbKo7lfKNDwn
	 LmJrSXaj9937bHSiQWx+fseWofI+fjOV4G7DmuotJEd5/Bb5LuvLXHdke8zjNWWB95
	 SgEqC7xZ6WoAXeXhTAp2Rx3V7YabS+byZsUW79ZmoepU1x2uQCQcHyoa8/S8ipOxd2
	 mAMhFM1fAOic+lYU1IhUsMYfufOO+Gbk9xUEoSahIWdZB/Pf6MrV33Wd/zsnsn68iG
	 MIhrFP2LUKS1PyTai3P5HBQ/XI7k+oCovz2MGnPnj4yv5eglGYqj3XOaQ00Ru8IkFC
	 K+fA7nCzJstVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A6EC77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569562578.22552.5920030448738053213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172ba1ffb601cfc54bd4df8b2019b8d4522563592caf8d2f38a3526df413314e
Date: Fri, 02 Jun 2023 08:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685695625
