Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616989475
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 21:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0E0E8C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 21:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677621366;
	bh=YoulndeT1nhcWGHPSOhqnJK71BuYVyGFVurLHRgdrUA=;
	h=To:Subject:From:Date:From;
	b=RwMQaT/71vlk94covJrFwef6JUzPFCdK1h88h5JlWaFdf1NpR2C/6x3bIyRjghBp3
	 exwcJOsx+Cym2wAZ1/Ping8R7gQw3rehX5d/2INLwpiH2FRTpUP7AwpFi1lNJv2mgO
	 4XH9AFw893Fck8/d8DWPN6O2nQTA32gV7krnE2e1dol+RclGhalD+2LtoDXzGL1QuE
	 R6iY04VG2ZB6NUMZd99Ahv9n5Rk7IHwQOncnQLbKF0kECPwjiZIWwbsRTXmIvR0C+w
	 TGxYYczjKIEP5iCztXRU+xAhK5fOmZdK45amdDsxFfV41OO+DqYMVsRzLPl7wE3nG0
	 xys+ZIMfyi1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98EFC64EC7
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 21:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167762136586.22605.10157117337705404225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c9bd4aae350147ba8320f2d25b7e9bbddf35ec6fedbd80481816ba2d886fc3
Date: Tue, 28 Feb 2023 21:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677621365
