Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF66517CB
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 702DFC433D7
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665565853;
	bh=ewSl6plFA/Ba0q1pBO7X1TrO0sX0TB/Zu56gE9D5SOw=;
	h=To:Subject:From:Date:From;
	b=TglarYZ+3XxdJ7VdFbvf5N33puC+rDtOy3UdK+O//SNjPwSQxMr1sNzMYuCOxsTbm
	 CLYzgbH8l2Z5OKUjjXLgbmvg+Rfnn2jKlyI1/emmSOaAhhSjWAfsjJcZslxr16nYPN
	 WxKLE07nu2lzhjcDg+ApHA6qKt2AgyZGMqrMA0sGAZuHiKqL2Pk+n0JFQDisnfeGE5
	 0NuSeOFJE/sKWAi6CeYdKYV5CRDeCdyAdbmBHaeMhgwRkblBKjRBT2z8oak6u2Tq9l
	 8hsMyVGxNejaW83gGUhU0Ojz7e+spm9Fb9Zz1RBI4OeYv5a3Vz4lvJ5sNeAb0rXPqO
	 1Ezk80uASv6ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 586B9C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166556585335.13268.7738668451334011913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1afedf0b73a36d846eacbb1bd01044a2d07534a56a6b28dcafedfbff9a01d5fd
Date: Wed, 12 Oct 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665565853
