Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD39A1105
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83209C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672284687;
	bh=CE4LQODqUmQpNpjCh284LPm72+6TI8pDhG7/LKnK02A=;
	h=To:Subject:From:Date:From;
	b=cKX5O7JHm9pzIcCmV4DVU+UhdXh5ITIZbv0MUIHbOq2uVlyINUE2H0GA/M2tpk0He
	 6x0towziykZ2OI/1XQOC9yAICwP5zqhNNcmaTQwjUqdiTM0CgvJN/iANBLVg5HaGPN
	 ugIke4/aRpjzJueauGrWVhZV56hf85o+mjEOyJJpeExzWiB9IFpdKY1U4CP+KtvVLb
	 a4TDaUimZUjSRGSZcJ70Q6lkun9sU4uS+fSpp0aNe/LNUAhkNWcOg24cAF2YtmTNtM
	 9+0sTpISoNsjnXz1KgrmLrXHEO7jywQEMXS6vzAuje+1IUXFRAOvZfkP9L2E/NN2O9
	 bZ+ms1cYDzLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6769AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167228468737.29585.1959590165108068388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28edd06210b4926a281e69038c17492aa7317e5b393ae161ddf86a93bdca243
Date: Thu, 29 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672284687
