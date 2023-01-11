Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF9DA92A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 912A2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673467887;
	bh=NUKGuhIS7GVBMucQAz6OAjKXdIeiI6FWvDpYgHQDyj0=;
	h=To:Subject:From:Date:From;
	b=l/gFSdSuLK6IB1lXHQECodHwa9p8L8C1WZ8kBk1jmwRsycz8caQawD+TWMEaOHXLB
	 iwBDsuwjQZ5fFBXS30JmJ1GeXlesMAqtvHfCVx+LxHmr57cEh8Iz6RfmIk9Y8rkmVz
	 3DoVyyJqNowlgWqCBiiiPTDCdc8VRuSDfzX9o0nniuE44B0CLZCXcErCy7aiFQYC30
	 JzstM7/POx5sAlr4EjdJwVWY0jMnn69L41ywHbL4W9D0+E6RR+8NeDjgHqU/UEwLjF
	 rgYriUBhYpl3xAZ3ilC7a7kQzyKdEaLcM/ODKb8H6/oro4rrLVa0rU8ijY2+6MnGJm
	 XABQkWYa6slMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70278C46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167346788744.7465.17974626617706564949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbd040fdc1593a18ee3d03e4d418462fc5f42e4c71765df92683d4e3536bb16
Date: Wed, 11 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673467887
