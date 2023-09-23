Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283E208BF
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 19:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD4EC433C9
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 19:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695498308;
	bh=PP9c8fdK9mRE7GidJR8ztvTgqYSF58wXy+E6KbgjO54=;
	h=To:Subject:From:Date:From;
	b=fgAHUWqzSm2xoGkxJopZqjYjccQT7FpsV/PqjrfRQmMbpUYo4Pom6JkEFz6c/PUpv
	 OYn2MgzMhio91otBAaiLiC7McUYlBF6/Fw48q0NXNUESWpuDdp4kBkE/Q/fGpp/J6y
	 vFcb+Po4dJA5gkcz0LsQLIMuqtax2kny60jYScS8olz0IAKJ4q195myHNo+bHqep6E
	 7Q+Jiq2341kcBCp3r9C/Az3wnZwnVlyr60uyBok9w8wgy1IF7nIN2cywvzL+8RDbTh
	 zfBJGKJaTPwH/SCtG//BU/Yhb+r2Rr6fBR4E0rvNCGoLxMGp5fbWfImuj3c/xYPhLQ
	 KeOqijEseEoWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE41CE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 19:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169549830869.4622.17578644320623941947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4647ca28058bbd3cc8d71113fec5706bfb36620f740052ae7921760bd7c5624e
Date: Sat, 23 Sep 2023 19:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695498308
