Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E4F24209
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="czCP0lKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95473C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704381496;
	bh=ulSQo/wz3GXg6So7M/S9J0C3pAo6+Hgx6jg/ytASxQ8=;
	h=To:Subject:From:Date:From;
	b=czCP0lKBiuNAcz+OtwHiZmNpddb00gM1LNCc/ZQWVfmUl+sZQbxco6dQzm6QA/wfx
	 kujBX/BoLhqQrPM+DZApqQF39pOdvQuFIiKT04phbxmLgBpcaN4LOhhJxoGTGKRNXQ
	 NtIJEzuE2ZFCpApBfXsS41YYZuN9FZOnd1fm/8l73AHYpnBcV/AwyEZ14MuG5mdl4i
	 Y8fYUugb+YCVDeGYWfmvmjJQ7Pu88pqzBEc4e5k2U5HNyPa/GGWKfZOe2tUpyB4nVZ
	 D6M6t2QTX4Jb/ptLYV1H/EfhWAk0k/YD4OWwdQ/INaiyeI4GleFeJgf6LczRN7okmm
	 m86VWbESNi5jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C27CC47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170438149648.17163.1087455467490054043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bf92d09435b4cbcd1702de46441552e5f3d34e0bb39d939ffa247adf8f9b60
Date: Thu, 04 Jan 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704381496
