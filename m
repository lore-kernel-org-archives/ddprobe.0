Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D4123C3
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84040C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670775087;
	bh=u+SNqYJYUxNZ/2Al1WxA/q5q+qEav54p1UQvdKbwd2s=;
	h=To:Subject:From:Date:From;
	b=lJUK5vFPHQ9dWHjEeqnidPxMsmwdcElO8aBFsrABlL9bl1JJlEefXj+IQHtPNuzA9
	 P6bMyf6aZ2I63Mpa9UmvATvRod9tUppEG0e7bjDxUZA5ruZwKgRYSvvRj9Huviqob8
	 BgeLm4GLrxq40e9CJxH80B+UGUsS42A/BBh0XC4oM4/MWc2p54SNgDw9YxIVYIOYGZ
	 Hz4zSRB2WPGPI2QpbPW5NoGzDCCPpDSOFg47WTkDpi7Kbs4Mmoyz/SngyKT3KNCaKr
	 f4+vBUUqxTSzR6YQseO5+tzbHd9y+xI/jmaO/+y9OB4tJvZ+czH0ULIZui3KlToiZT
	 usR9iFXrurbgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65879C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167077508739.29022.7342029218981043973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c374ba24f9eb6cfe607b873ffcb78a7e2661eb9443bc11e9e250fd911ab17e
Date: Sun, 11 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670775087
