Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C732F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D18C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672576887;
	bh=83j7mkC9mqkc9m4Dl5pe8bYxDVdklGtyuw5fCMW5dVQ=;
	h=To:Subject:From:Date:From;
	b=CXD505Ph+NA7jo9ulKUEQa1dCvFxEPYiyBSJBH6nJhr/RAE94XSaUrFqDn6pdaEA4
	 nAF6pNqp2EtR4X3ryyoqa8FVvsf6/x238U7/9nXKcjSAqb1sL4F6mxsKhTL4tT7F0Y
	 YneKkb2AKPC/S3rCDpYIm50HE8cK/rXmmunBHdE4549Dcnstqb1UUdBdHb6eBPBq53
	 Ci1LzdwyBd/SVsYgyvOYq7jSQ0x+IyXxOLK8eQxW1UHhpWlgdBTv4lzAu7AqDlR6kS
	 gHd4RevxabppUxRLogIG6FcdNm4ufeDv7f55rjrl3uvyxcrUjGWqrFArtAIst3uZ/v
	 IICyNlz2ExuZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647BFC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167257688737.15586.16869764538132868936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 146b00795112a92ffea425b59b10169effbe0f43739740ea03241d2d7426a958
Date: Sun, 01 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672576887
