Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11015191
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 00:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFPguJBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94B16C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 00:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704759496;
	bh=0uaKrCWMZ8E2xrUDf8aoS6ejCASqUKRknXxgIGfYU+g=;
	h=To:Subject:From:Date:From;
	b=kFPguJBio1eABRuzfCqW/N5NgNxpuw7ao9mxBExWSkNepGftESaDhQexhLZMFkHF+
	 t9Y2gsgiTekUJEYiw99i0ZGijYBz0NlD9BVYdaIbUJhykGBxfK4nGnqvf4vJ3xwmr0
	 iy3O5XnyXDr/SlAK4s5DvKGEegReQlkoymfhBGGncWBbcbk9FGZj8Dh6vvpF3s3BBH
	 RYwcaMownUxU/mtd/3qjx7H+gQINcpecd7flhDe4oxjDZi3SgqykrlCE8eWECV/aTY
	 pXJQoT+KqteoNx+NH+8feiXvJv3R6qF9NyrDepmTmH41u30sX0/WmwfxQoqb3Ha1r/
	 Ps4SA8r4dPdnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76F24C3DA6E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 00:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170475949642.32600.8704634749853599054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 810b23a81cdea15cb42aad2a6ce4874d04b3329ae4e32df22fc4fa20867b05c3
Date: Tue, 09 Jan 2024 00:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704759496
