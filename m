Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E5B7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 161F0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678515306;
	bh=Vu0xHsro02n7i+ayfSjtIkXeJ1EfhpRw5yAs61ZdEAU=;
	h=To:Subject:From:Date:From;
	b=ILMO3XRUCgvbGCdA+vIqNDh56cGqrFRtQpOHXeLvIN1QZgsjLsa414+rlc2RMIuSn
	 u7/Mx7hfnITdyNsmWcL7BVlqYOEuLc8s/czPXTs3GX9CDG9c6NwihrwNLZo3ru77Ol
	 TH/gQLApqa/ApkzvJhTv83XDj9Ig5Dc0m78db1GStKyBzcgufqZw0FiXVTm8rcW1Gu
	 YKh72hm+IrZNfZcaYILAdSs3gZw8ug9ktHabULO2huq2Qk+FAs3AV0zhqznNA2mIw8
	 R1tEngJJ93lYFC/vGAiSFb2Ctu9OWcqUS+yRe3ocE9BICQz8F+CfmYeKlcthz3ZS/o
	 HaaIQuoT7MTZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC2A8C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167851530595.16848.16384881424527394324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f69664c802dcca5a697e1c19d69991098ee070aa2b7572e09bff90bf9bd4b1
Date: Sat, 11 Mar 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678515305
