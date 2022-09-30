Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61BC186B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70094C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664513453;
	bh=FrQ1rYJyiwon4vGp2rxdosMduGP9EPnTboEHpsU7Cbs=;
	h=To:Subject:From:Date:From;
	b=bkwDi6HdG0SbEykwRuGoxo/Lt5tHnm74yVVJZhecCxvko2jJD268P718Qu5U+QZwa
	 nX6PJFzL3N7NEXVgQ6GoTjPeBkEwzAtwiNPEoaP7zG0wzNId+ejvLMK1esgfBtLzhY
	 awhhYjfgI9cgdb+M9gNT/PgFUPXOoiplquKHH9iqCGirnnGyYxV44qykWOpy/y9vMj
	 ndrC8GzjS8BusXvuvlkChORjCrrDtbmWx1wNY+9FQ4QSPV1ijJUNixGZVqV+ME1Syh
	 ZX4U6+AYQCvhwdx9hFx2fdTkREVaeMwHc8SfHQOv89lgQYSQ1vvf8VqzV5O+APUZiy
	 ONAwG8tGEPEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540DBC433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166451345333.28260.6854608363377291515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 936439a290eea104c74ecde7ea0147f6a7a60ebe24ab219ea761f544b312933f
Date: Fri, 30 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664513453
