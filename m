Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEE67C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 12:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7466C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 12:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674564185;
	bh=s2XYsZt5jleGueru5lmnt6jp53RJPY2h7igUssRNERQ=;
	h=To:Subject:From:Date:From;
	b=X3yuj7qDllCxXFDECSRDw0esSxNskpRPayyoIjEwAy0igKAWNVx5oLsVDOcw59gVK
	 oGGcxJ34kOaXcD5xCDY/wPF1FEvSjnarkIJli3mmsj0Zc8WDGSZcw1D4RQ1MwI4XJz
	 JLcIClzLXCLi2bS38dBZo3OVKNen4Yx7IpSSzCO0ruWGD5hFxSZVSRO9wimWgRuUS/
	 lpGDvh8iqINjjFch8CsSKOD2w7POpvvLCuarXwmKdZeRgvkkE7jU+FClJtQeN/FJBq
	 2G+kzkCnNJhbJA+MIbXGcxhkGYucyaznjydu6ZdWuXOkRMxIVQHLyaYLjD8ESkCWct
	 bHCkryH2X38Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C90E9C25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 12:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456418580.23717.15327302867818552691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bc31da31edf052e114b44868505b120e0ed4d47dfc9c1ab0afe001a1734ae7
Date: Tue, 24 Jan 2023 12:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674564185
