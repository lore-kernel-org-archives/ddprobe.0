Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D513D38E
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFfzR5aC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79212C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700568496;
	bh=FvdRe78QqQytMylCUFmSTqdpGjLB2iXotGZyESESJrY=;
	h=To:Subject:From:Date:From;
	b=PFfzR5aCXVtC4iqYOv3m6zMWy/g+xdCXR5ilsdpwFrh7cHJ2AZ2FvU9x7KmJiT6hR
	 Z8tCSWQ7g8znjKdtStMwv8FZCyuXL/E5LhvcAgGjp33oBdgVEVufLJkN+DU3QydvsW
	 NZS72/a0iQvFByPEYAm0JMeN994OQpJbHg20SFqMuvwygzKvFVCI4w7ghs2BgFa2f8
	 QJKKleJCowwUmwUUxqMNO78UmdwvHF5ZujYj0VnR/EZIImKGZd42g6K2W+cWvHM8LE
	 JzJbx8+kZ7TIjL6frqLkZqM/4hVwh1r76paz2KXUW8tE52u5D/7Nt0xCIvMgLc4DCT
	 MQqDz8llqJ5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60524C54FB9
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056849638.24047.15158030313979603111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a51027ed5f0de93f36c9e2630dcbce4ba9b57ab155aac1cec003ec9a12b3f86
Date: Tue, 21 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700568496
