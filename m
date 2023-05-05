Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B667E
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC9E7C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683247505;
	bh=UPOMNQyejqipFiUbcNs6r/LERNWZ2IPqYKUcC71zwBg=;
	h=To:Subject:From:Date:From;
	b=Hl8P9jNiDkUnt0TDR70ybOjuc6B3Wf4P38pqHP75TlCDu+TDws7SfoTJ0JrkSZp27
	 XsFLO+dF7hjAnJpHZZ3TnzNh4QkJ3OruS46F8VApJU9yRv/wEYZMsLwCKm/h5zdCyX
	 grpzgX/z90JIjbJWbd58sN/zk374mAWe+irw0S6Xc7WROGVj+C/SmwVYvy4DKjFclA
	 7F437o+U9esFlKGHAlclzH5pw4pWU/i0klXtot4VyfvzrjB7fd+CsVyRwrDrWLG5ew
	 q70jy58nIaOt8DsAMRyuihUTAGsxrJHoLQt9ju4Q8UYNuZLbQfBMh4AmrSALuh55j5
	 NmQ55aex3TTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3406C7EE21
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 00:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324750578.22342.7627554771639787166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfb91795af79c010880053d1ae4e0fe664f92405c9bd409e4679d6c2743fa19
Date: Fri, 05 May 2023 00:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683247505
