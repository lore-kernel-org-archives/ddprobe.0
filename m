Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CE71FAD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF04AC433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688008988;
	bh=sYIjyIpMiUn5IPKZ8c/MK0dPLEoJaBz/Gh4AcjF9Qrc=;
	h=To:Subject:From:Date:From;
	b=CFnVnd2rlgr0dYajVLgJ7Sn+Iln1iiqaBAG/xQjuqA3O99P4nS+MtWi+uzkyLU2/b
	 jSmwZ6iZ/Qx3fvoptTJfyNKCF+JjFdhdTlU3hesDxBrLrJyFa+NJdP/nLsONvWA3BD
	 mgzV2nZ3BUsN0CneP9yS2+LrjG1c/ofAinxdBtdLtUiLo87uZ7MIc4xy3Uks5bKMjL
	 je7hJWORgxMNiuGQm8yvDvlFZ5NNQJV+suAyLV+xPbujxn13dzaDfadjEY5M/LNV5P
	 G6jVirMYw8pJCvw/AbaKwthjj6NQT+PstpCno9YVtlYOBRubdimOTEbSzsD/fMJciq
	 dGtL6HsI/VKTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BCEB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800898869.26841.14904670718124273000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc9acd586c03e75433609a46fef005e9fd9dba89b9c9d8cc97736ca9f2ba343
Date: Thu, 29 Jun 2023 03:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688008988
