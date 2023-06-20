Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546A615B2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9BDC433C0
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687237928;
	bh=lfogYgxc+BBVcYBco393Jp9gXLlk6ZHTQMGuHdHwGFc=;
	h=To:Subject:From:Date:From;
	b=u5ApAHepH/VtiQuO/HwzbQZeGk9FtUS/PjSsdtYtmU6mZfHOy6srPZe9UCrftw/fO
	 b3h78EZN+tGlk2XdbD4k1u2CFFvUE1WSzasSfcpfjzRQTqJsOLgLcdzKX4X6RsQNCv
	 le1joQt0nqiZsCGsAo81G4pj/B4lYjgZP736Pm6ReYXp4LgFtVYiMZXb9QZyr6KCMh
	 Rs3vsPLO8XdkW+bKM0xEOQ0u5upvoEPGt0JrJLFFb/xq/Za7iUPbNPuf2+t6Kk5tsc
	 t/jaRSHvaXntJ0Z8lZkbYMd5HYogJRWSBMipUbhQW8Cyp2hzBdTIvkbwOlMbniOcgv
	 drZfjnmVo5u3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B194EEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723792868.2526.5169748195150727761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f237daf936926f5d81861f4d8644fb2dc996868b5ccfd91c78a8db7ccf76a67e
Date: Tue, 20 Jun 2023 05:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687237928
