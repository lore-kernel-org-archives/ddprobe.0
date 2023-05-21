Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7B62597
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 15:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7F5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 15:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684681925;
	bh=37Men+qApCfH9tJ/FhpCIQRJjqWhF/pE4+0mXDrO2L4=;
	h=To:Subject:From:Date:From;
	b=Nzxlbj+NSLhPp9sGRfvoNYcdTbNPF/9Km3bcMUd7PvLG5FqolC5UrXhAyC77e2JQJ
	 5o6iLJHOe3kUhXuiKkoY8/p7Xdyzs0e4nk1XKcgAby11vh/LyEvg1GRGdY1uIf4tmU
	 pC5e4k22Jr9YV1AjimZGKNc+1JrpoYLuj5fb5i8Gg1sVoRu/CRkazmFa6th2L5J21V
	 PcViY5spLik0prG+tHy5pSaaIP5qzM7EJta3GRlGabfp/SKb4Gy9QVhWrZptWv94jJ
	 /wOERHGKs/pkgqQ321+bH4Doru489QtLsCZLAvGc1dmskmqwqj+Owm7urYcLe8zRQJ
	 9OykeQ7SCHKDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4693C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 15:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168468192573.17988.15458514830448656030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96967d61d911a1a80d745b27a902b4a3d38a735338f928bb60dc353657273001
Date: Sun, 21 May 2023 15:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684681925
