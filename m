Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A417C7
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 01:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED74AC4339B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 01:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684979706;
	bh=WJ3kub1jlfCeeITIjsgjcrKu6+PNYP76Vj8bHsC46oQ=;
	h=To:Subject:From:Date:From;
	b=FZd6TR0JuvBQ7BukHEfJEMBzEWqNhX03fRXWfKhR4SXuhLX90ghiDyE1athKkknCA
	 D+/yTSuRZQnvi62XL0cmFU6omoroY9LMpfn0twwlld/292KgrMBxyCrEDeqeaWttLj
	 pHznjoZet1IPfmkymczy5AQ7RMik8eydbjJnYGfhCIHWV/UKpRhovl4hWDZnI+7SAa
	 xuUcu+oUBr0lOYZWkIix9MYkbgYWQdN4/EtaQ1t3DLqbPal4l42DSbFgL3+tdT/5ro
	 XvGKd2aXq8yV0NIPJ844+3YBEFavHGGtWDAJ8yStTltj9EKJXy2JTwHR0H1ipNGv24
	 p4HYhi3KAaYoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8833C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 01:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168497970580.2096.2914560752378726707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e969f89db8a798f6460fcfc489246a66787e0a9441377af338d52484528e0fbb
Date: Thu, 25 May 2023 01:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684979705
