Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09FD7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72D3CC433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668559854;
	bh=sZdBmWa55E/QTTV3tXzy6jTUV9UPdJvX20leluG1ApI=;
	h=To:Subject:From:Date:From;
	b=XU8K1oHov4CpBWhFpfxzhW63l4l+Zlh6AIinLAvXPKyov96kqISfBhltifPd6q+Mt
	 uqLWzJLi7AUJ+ZY6zNGfa9LkC4V9h8iJrwC8JG+fz8t4cZih+16Y458uDRkAd8APdk
	 Nyd3UvaePdlLCf+rwDE4IQJLW5t/Cel3SnrkmHqQbUkYB0S+iUClEDGeT8faI5yIMK
	 wDj5m3L7dF7DSETVY3Y23jWZmkTfHVyML/ZJgNXjHFVpVfJU9WIfQtrUfgsboCf4++
	 qe5j8/CW7UIQHY7zWoczlbCRvMiW6iXfXYp+lkSgQLcGcG+N/+U/4ukfcI6328T28c
	 wEOadQu5Xx0Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E9CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166855985433.31432.4565249070611814418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f243bb4c917aaac1a127696c1f5ff7a15f03201073067eaf959e4ebd5853da9
Date: Wed, 16 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668559854
