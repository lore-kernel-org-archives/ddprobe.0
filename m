Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E29117D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F7CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687406588;
	bh=JysUOczcHsYE4Elx38WUtvlfFHQTu+qGiF6orllOJN8=;
	h=To:Subject:From:Date:From;
	b=F0ZG3fK0f4uMuXlFu8B+iQLbsxeaZgJPjQzZT7II/dkt33+jNC8P8VsF86hgO0wB4
	 TxAfxVy0jZTchANNpZh7MmPwgR5LjZq1+QSEydkFRiGHKKxoVsC51n5RhJqq5NIth6
	 TvTYBYmajJJO8LaXRY82tkJ+5mDf+Rrb4HKsibF7NDBeM1N/GEHcz8dQ7JF8BV2qOv
	 STESH4Dg1aG/XGZzJ8ojgAiTaiyTrA5vZWnF5qEdz/Fjeeg86lCbs7kGekk4bhxW6l
	 C3TJFXHGRXU+yl24sxQVqkMJPQPi+0919k2ejM/YyHgbM5qnxj+9VcNCIsgwmPVPFH
	 ij9bxIUYEomxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0205EB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168740658871.13803.6968250759792855225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3087e54271a0f027c177a30cdf2b416fa2f400de793e75c1485402673c0c209
Date: Thu, 22 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687406588
