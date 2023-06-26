Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5434C75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA698C433C9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687753989;
	bh=KmEkrBW9mpZ4einlOe7W/RbfaJQlV7utarLPS6ftaZQ=;
	h=To:Subject:From:Date:From;
	b=qKtJtbUIT0g36OvwrGv7yxLWMreg+fztuPj9fTZmKtPsiZ4c+H7lebwN1OpFJkKYP
	 Z84pmI2m3/cLAne3FG6yLcNP5AO2kbFVmIzYxNEZHzxrWdWdmzHtHXHCVMOmJkFlHI
	 EcOGo6k+LTIIvv1ZTQ4vo/Z8V42hkjeaI/v4H7Coa6ZcNGXlWGO5LcSjwYHQ0VeFWs
	 0bvkNEVR3GI6jzcy5E1wtqVM7tAOoOBG6Gd6hTqKKM69epT6CkxTXcs+QWr4nN6tzU
	 mGug7zdCP2RpI3HZDFkQYHLqQrOeUQg0gO5YvSwzuOUoozy4jaEP8Wz9fdtOuH1jnK
	 T3yy5hpQYvgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0812EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 04:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168775398877.17746.4904138400414635725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee7b39317fab1d6fe3108bfa13bf42cfdf68f0d1c8dd5dd66b9a597eb34c485
Date: Mon, 26 Jun 2023 04:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687753988
