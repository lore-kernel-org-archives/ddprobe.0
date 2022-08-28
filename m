Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86D84699
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78781C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661709652;
	bh=f9fqmOGAFsovw3lN+qT+qLL1tvEeNkQCg+sa7M4QabM=;
	h=To:Subject:From:Date:From;
	b=hLUn8WY+hlueyaTBR7XeD2s83PMSkObURtW7nQy0tnxNFx3n1Qboa2v6W4zlc4VsX
	 VH48IbR5BFK9umnZRgdRY6ptKF+SeISmNuI2ubtRQOdumwV+07Fqs8sc+QSd7Qp1/x
	 GG7KwJu30St7FoLlaIZzTOvX7tSH+A9Be4pZm6IS0R+iED/cEKLuFwXKMpSBuQHGzR
	 pz3MXrqjUeQCwyxHMGaTVVJ4rLLllVlAKQmZcE5fLq5MBcVGSIkne1+zyBQx1vzWmI
	 Pvob/qXw6psilsT/CWtTK/NxnfjtuhFSTyRfOzIIvODorDYcUm+g4eTHyg8WUbunTr
	 Woz/h/7LiGcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E50CECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 18:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166170965233.23726.18258900271146188404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c8e4be7d0d3b25c5b915393e11a06d1d05e992e262c5986d12417270d1acc2
Date: Sun, 28 Aug 2022 18:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661709652
