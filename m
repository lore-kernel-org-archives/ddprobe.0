Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1925511712
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ev06bMTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 959DCC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699853296;
	bh=IchqAey137779Vajn7b/ERPDwznl9m3AYCqmT/CxRS0=;
	h=To:Subject:From:Date:From;
	b=Ev06bMTWFTlHKUIskEvHSaOdnPlu6po+GvWqSCwua8SFGoxSks/YjNu1A1301mti5
	 0XyRwbl6a1PXc0CasXwR5KTDTQzRn3ifu8V6RZvemd3ziZdeblqn9TRAM4CKyvHudO
	 8ioGDf3tU9KDLDkWU+Z5jmR9GqcSTMWx9FLfaDy0tGSqh/WE0ykCm9BQZtng4sPIPS
	 ikS9nQI+YjQAQfUJLQ+mKoC/bLxZ/Oj32nvP04OZIUBZhlNtK5chRufmJQdyYPz6B5
	 p/jByR2YWn7rZJvFqMZ9/E2QxEVbKMx7LvUJWDDgk6Qo1Qw/AhWzLqWTxpeQCV7fq5
	 1bFvT1JJbaGpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70CD8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169985329643.28579.14201513604293692966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a965f07d23d0dae45177c16eb132358f8d1819cf9a917b7b790fc3c2fcbc2bd
Date: Mon, 13 Nov 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699853296
