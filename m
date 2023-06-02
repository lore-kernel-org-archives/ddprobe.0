Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4776217EE
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DFCC433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685678765;
	bh=Z7MW9/I3wJXjEN1eEZbHOh+YhKjMQa92sY1DXWpQYTA=;
	h=To:Subject:From:Date:From;
	b=mLPBVEeVsOzZlfue4A+NB3bFH02fSnwjl9+NRT+Kth+R4l4Eo7g7hFl1yv712TNmC
	 x/gfJDx6WlwpVNlMvUwn3GUqmH6Mh3eDjwqlStu1622QtKa+wvQ9/YcwNBeoDAlKCV
	 bpCvQiTNCmBKEAMMafFtU5MVGZwQjoM0PO5L9m/I41BncqnAi0arJjMFYhef331doZ
	 YghwdamusBNcdPQkgUFmAK79fjd73WDa487KpbUipBu2sfIfS3QwR4hyqsdQhJTC7n
	 ihcbrTA2dOR26RwwmMOYR+fmRYgWv8xPTTZsPFFVSRODW5q9V5pyVQ0YzBdk0UZTtD
	 MmYv//rhr1+xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A9EC7EE2A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168567876575.15150.15887030362785915571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80a5d57f3c62cbee44d87d0bac10d78a9fb3d9266a8c650785539ce75e26a92
Date: Fri, 02 Jun 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685678765
