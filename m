Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABCC17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85ED5C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673421687;
	bh=lSYQqbbCh7jhcaWoQquhbeHpj+cnwixE2QCP5g25BTw=;
	h=To:Subject:From:Date:From;
	b=Gl5+8XmKLpq4eX9XANg3YzrTkr8jv7iKrvqHxs1CV5OB0Z+L01nyDLGzuMapeFgT6
	 3/G6jsNNwQa1wg3KwyqXqyp6DxzQadYOp9hRealsNEBKOJoXyHF4bSwnqsfmu2uWXO
	 U8iNIKZLk/wVP5yXqauLKXBgmQ6S2f+oOLR9TYcDwEnty4DVelUZlg8fxQsnKFUcI7
	 MkbKTmOi5sP/TQObF0k4AzLuzqu4GdRk9J7FR4obmwuHw2+BeoaQKDdbmYR4VTA8eq
	 YSyHynzQvu0FeUH2Qi109aG8aMi7yqd64ECE6nXdcHMmOJQIm6Rt15XZt2B3nbFHkV
	 VJfzu5Azik8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AD1C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342168739.10330.11793850610257072768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ff1bf5cc46d79f6224a5f7c8445b94b6fee9026a3cc319ed1d8b787845e5a2
Date: Wed, 11 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673421687
