Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542DD3C10
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C17B6C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687639988;
	bh=MBkC817PmnajfYrwzdJPCqXblDv5pzuSDr+sK/wOASQ=;
	h=To:Subject:From:Date:From;
	b=FMs/PDRI3uZYyvVm+hmj9IG9RiARHjrEBYXa1+qLLdoAf0OJeu/Un7eG3cWcG9CGG
	 KbD9CgoS0FcntOhIWUhOuFpf8rDM/CFNPBUWZBKdDRWKosJ6+BHghUrsJKRnMi5+2S
	 yUmS0/YEaGlpDoCUcwylZj3ebMKMkzGDyN/bim6BOgjbyCehXLktE1gEzcaTbsPdfB
	 wcd6cRRn9ybI68FYnPCqaoNNIyjLdpTSbquDaHmwsS0DuhsTlYatRtQgwiHQgHlA9E
	 sKadAtUHqLc40dbAycicAxNV8ZoLdqLAbV2rZ/TowBD2agkYa15/eCyljtF6WNYs04
	 gRZQz1VPcIoUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A5AEB64DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 20:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763998867.11828.3851221568878994950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83f4150ae7a1eb1839944d5d6866160d44b72c03e1abcd5fd2e441638694492
Date: Sat, 24 Jun 2023 20:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687639988
