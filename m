Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307DB7471
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ABAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679673665;
	bh=79C28noBPCjczp+nNMcLvxuzeJRAdnq6kXdkzetj+As=;
	h=To:Subject:From:Date:From;
	b=h4/Yy+FlhwietrSQ25BZQCj37NE7vpQDvvaE/1/i54//cItSf9HCUPsDw4UvFFSsZ
	 sjYOdFh0fe8K8i72LuV7AEQPVBxLUpyBOKeyHLT5hTkX7HPVRQOHxA4+nGk4jWR722
	 11DbYuOM4wgamUYCOUe9R576l0rjNJpKb3YZPCHD+jOR4FDHMYm4o0LUKbyG34KSFL
	 +jt6H3cn4FtosgJuGiaF+a536t/zLH6f+QfTD2lgHrE9jj2KBjXNLhR/vKCMsmd6YC
	 nc12sJx/l72n0tSIZ+wQNevcl9VB9dc32XKFfqUu4gFQdKOf/m8y1V1NiAMB12dTJ3
	 a/9q8id4+l2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96A5C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 16:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167967366574.23341.7652926842730177193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acdf304bc2750d6515a1658682bb49ba46f470b7a60a50f3fc13ed831c25a834
Date: Fri, 24 Mar 2023 16:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679673665
