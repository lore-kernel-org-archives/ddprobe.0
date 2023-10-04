Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797111B27F
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngZqOVPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DCFC433C9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696449968;
	bh=phY4enUlVN6sVGZITt0+u9q04TZCctJsM+Xc+uD+i0I=;
	h=To:Subject:From:Date:From;
	b=ngZqOVPgU6tgleE3Ym6fYMc1/huq4QsKgIIVAAc4RsJ3YPBu+cDT4ekJxo8o85WJY
	 1v+gZ0aYsTNOjf968fSe/1fE/nTBdGsHaGp8/TJ+O9kKESU4RNGQYwq79I83Dm13II
	 g84XVW/ghSMeA8mJTSRXsyXWkLtfkLCrXOTcIutXwbt1ghBdzv6DQr7/bmGYBbLW4S
	 QWMV0eZkEhrmXRIcrGvou4zR/sOb2UIHUKYclj83YVe9Yw6iZb97dgKKR3gyZLqZ5f
	 4bGRgJaBi6H1GqZU2jrbTDfu0KfQGFIKvir5aXkU1Z5tES7JeJ5FRuzJHvcdRUUJ5P
	 LWPFOiDnzeV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0205E7C4F0
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 20:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644996870.5353.16708053043956338941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6439a1979fd3504d8897c846770c18f91ad2182e370fd5a4b0e6174c4fa117e1
Date: Wed, 04 Oct 2023 20:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696449968
