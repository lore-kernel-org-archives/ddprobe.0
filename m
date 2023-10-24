Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380F114F82
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA0q+ZDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 896FBC433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698149896;
	bh=0yQUyeh++L7NsTSPUtsPWSYi7L1dbKCebQTeoXCWz8E=;
	h=To:Subject:From:Date:From;
	b=LA0q+ZDuO+sQwKH7JZmnCwxtet9tF/5iZbhMWGwF1xuGyPFX3FPG5Uy2QGlKHiga1
	 REaMI4X1PfctiFfHmwlOv2C5AYVhoP7rtFLgqPuMfJCmU1gEVyTLdutViUZvIBxf8S
	 THCUtQlqvUw9n1gXhiuKAC0GkQJcjZIHYjduw9EWxkSgOuuGFphPujVtztobkSpWPs
	 ouELtfe60mCqVc+QjFQhLX9luYWv0N96swXuX/AaNq5etiOnUaVpQdCpUv4yD5XL/B
	 bF9LOzuJ9215rBJOtcm+m+siH7vPu7YQIeInmwIO/ADAZgBYx529qUX51FvfE/1RIq
	 yNhCa/hKpZiRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68289C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169814989641.2848.2575921329828115445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed38ae88f8efd88c5eb8701d6e18a9923ed5397e333988209e47d5f6b5c48dcb
Date: Tue, 24 Oct 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698149896
