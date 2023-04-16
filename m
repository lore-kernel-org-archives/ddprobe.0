Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1CA7B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23C7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681665425;
	bh=Aq9cZSG309ScjfzRsDyjV+vyJQ6TyVHe/tBLDJm+CHM=;
	h=To:Subject:From:Date:From;
	b=YLJiQDHdY0aOrgA4+vzXDQZ6uX8IFKsCJR5I0zu3ey7PTWB6IGTbcG/HPcKK43arQ
	 +4AtD7J2EQKMafL6dQpDA9jQBVc9aFBrWvEpYNToAZvNEeTaJafYnRpUrYYiBGa+57
	 ojUnbHR23C/zVC4rI4QykNOi75J1fxLr9WLB0eUBg1sLD3P4F0G47PQMRHvJgJpY7U
	 n4FZt94rb9qkKBw13HntmazESJ0WltMhRlwSmHtscHFSKUoH5BGp+V173/anob5F5/
	 eVAwxAY9iIzuv60l/aBIoXi1JOTG6MNAGDI+NUMPfFujlLHODTW/qz9OiBBukonMKh
	 oQauwSZq21q3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB13FC77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166542572.9589.15325135813520685513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14a3c093d027e9f2f3b5a2565d467c13666c4ef733cae8ea0f2441e378f645f
Date: Sun, 16 Apr 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681665425
