Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4136B6D39
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBDFCC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676908745;
	bh=Ab6GBxGpENvY0xw/KJ8DyPoPBEGKYilTZrLHEiZL/mg=;
	h=To:Subject:From:Date:From;
	b=n+x2zTeS2E0rhQDR5ZNRowRTki1fcL4IBv9J+an5WLk8mQUIo6uRg6dn0g6j0GvAy
	 VTlrGJEMIAZgB48YbgWbqn+SldRK/BUri0/BeQRCutsEBRxfhmAlab5fQK5HNX4dMl
	 /FiBSieaS2Ja6BvMkWpCQWoJbHUIZUSplYSLoZ1lgS1P49lNCXY76jwBK4OflcRqgb
	 CFHHUOhfWfS1MOMEg8clHfQZg0gJGiEOrDUGeL286M4IrADzW2xux6WSXstHFkQj0r
	 +7tu+v+T/0JTTTO0/UpGrfGFOW/+RW30CyZtwtw+6vTMLCKQGU0fVywsuVEHvXuoAi
	 EeOr9oZsjkItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDABC636CC
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690874576.8947.8831067619997769992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ac941799cdb9ee6a07619cbc2486f7057bca1bf311b319952cebe5f294f0e8
Date: Mon, 20 Feb 2023 15:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676908745
