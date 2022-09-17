Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81D663A
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CACC433C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663405853;
	bh=8YhfKkCR1EhkYdha0AUWtF3+zOb9X06/KoSPoQ3M4mo=;
	h=To:Subject:From:Date:From;
	b=DsAWObg4eaqBU/56yLWTk6opAL4xZpNGzJlq9Ktj1eTee6hDRrg/Zuxj2f+k5s6/B
	 jCkHwZlKJy1/Klr3cwJlz6BjO/4giBclS5sUkMU5tea2AgIcVCnJFNIASfqrcja1fR
	 zjNXNhf/mmzbbASZDXBuPR8utJG/UGR3ofcHj45bTrniG+A81LtnaAvXatWC/eSUpH
	 4pYrE4PFLfgpCNEnDoQJn38F56/JL8QUQdVp/+gmVY5jKoG0PI9pwgoJaUbEe3mzGz
	 FYup0EWISSmxpA0xByPPhBQLddRzKIHYYNOL++JMvAUbdl4shWqPdmf73noLS1ezGP
	 XA1NubI4EkEbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53248ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166340585333.14481.11477922901573258193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b082d4338191c34117c4de4d5a260b71416959f337503366b57a0f5267f715f
Date: Sat, 17 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663405853
