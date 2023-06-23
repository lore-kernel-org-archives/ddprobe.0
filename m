Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBF410F7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B37C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687510388;
	bh=QWuxqDcgR5tS3HHsomuV9kocl3gM18bDIKI08NAVV8U=;
	h=To:Subject:From:Date:From;
	b=X4ti4myRbOzDaIFqq3N+JUMKEsnH7NJhWGQMsaTuptAbMIPyH8gCWtuP6CSIsU/X0
	 NAf7iPRLiWWNiKECIrQhbd2RmXQoXUV8BBPO227HJjc+2xBsI5Cf4/3QY+C8faYNtS
	 UnmDYguBqvWVbzb0/4+gv21C+4Xxj12XDRBxdN8lDUq7Xnzilif6cKZv/bJvG5sbza
	 pMjTIUBvJhGJ5Hnw4ZGq/93UUI4P3Xxnh8TFUFD2HphpxR4M1yqgyYNH3FyE0xITrm
	 wXJgbXhlxBOPRaAdDjA7Z0ynzYGJzzXDyaY4nHfQ9h0V9D79nR6Cpe1l9ASOJK0JYv
	 heDDs8PERoxEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64FAEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751038867.9134.17146911667098565449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7c55b059bd155797458be69c9dbe90326446ac1585a0d4dc948ae89a4e17d6
Date: Fri, 23 Jun 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687510388
