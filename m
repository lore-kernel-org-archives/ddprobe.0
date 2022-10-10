Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD12D3209
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6779AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665420053;
	bh=yMbNqW/Mc/DuMh2i/F7vDMIKn4uubHs7tto8ofvPj0s=;
	h=To:Subject:From:Date:From;
	b=kLs99noEU40cn58V4xuQty0FQlOnf2uQ8VxwWJmGtPG9fjLLS+ThQGElBFo3LN6CQ
	 Xi3dQ+rArYn7UNwbORPp6glnWyUKqI7AthDX/LZauujUtPAfrvDzcmdHWj9oD75QED
	 +snokUb5HJl/9agOQSh2pKE+QJoctsraBN7PPrRkHQq0OR28P75VMCFb4kzatvftDe
	 efZdTVvI6KbnyM+aN3bf/EYPB9UAYpDIsTlebgVAmeTUsUJNJ5SK4WjlN5Wjrzzm7s
	 fOLT6cW2CH1c5/yXVJ62RC2TlsX1K1iovpYkomlbSSrW4/BTQT7uQDpQ2hhd8KptNp
	 KU0iEF1JnIrNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB8EC433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166542005331.24619.11201489977582606765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7de791469fe03d45041193f01da6b03028bc2b7732035e4ca72ef556aeb0dc9
Date: Mon, 10 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665420053
