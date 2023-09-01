Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722E08BF8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D02C8C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693559048;
	bh=vkkZOu5VDMOEapmvzGLBBXvJxnTH91XdOxpY1ehyQpc=;
	h=To:Subject:From:Date:From;
	b=arKCsGvInWl/imG0ALv4qgiWnjWH8Hli11sv6KRJ2tivB+a3qMfoTo7fUAVNHbYN3
	 QHHN1o4oGxcDHNENGnSgUOqgeOnYhtiaAYxMUUST8XWhUbyiJHMznj2iBPqi9AaSf0
	 QRXJwAJDZczgsW1xiJJGsUhBE1QBqb7nvL/TnJ8U6Y5t/eMYNGvZ0T5E5FWUvsQHGu
	 NZw99DHN0mLHAgMOo1dh4SEi/YF4r2Yt7sHIFyY18qgZs3VoIFAtqhOSDj1PdsUQDM
	 YujN3aeeOLmJKuFZw8UkTNfA4Y/mfPg6UhY1VXxNO4PmUWfg3N+Vgwa866K0O0nWYR
	 +yldO79CGzreA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDCDCA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 09:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169355904870.19963.7485604061061121855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fec92a536bee1399b370d5fb8dbb794fcb1f2592040a7f4a58633bbd248353
Date: Fri, 01 Sep 2023 09:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693559048
