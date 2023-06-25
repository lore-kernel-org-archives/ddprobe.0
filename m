Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD08BEA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F38C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687729988;
	bh=Rn6vPKWgnNpKRiro+EgF1fLfZv9lTREQS33lO2G7vXc=;
	h=To:Subject:From:Date:From;
	b=YjBiMm9/REPHMHDQmKKz6LnLeCTm+lYuuTQGkarErhRYk8A0b1zokGIl/HIFXsMHU
	 /STbA8Ny/2PeXwWIYQG8F02rZXpZM8x1ESY0jGftlTKb+21ttNbnzc6Vn2v4F0YA3q
	 sp0B943DmKXAAAQqpNVL0DoE/ONcgVBc7USeCOtPYal6Z4e7xd37WmtfIEPopqOteg
	 TeNAm6t5KZEec1Mx1Xd/I0kwDCFVX8X/CdicUTp/T0GgjeH+Xdp66j2O2KsP+hizv6
	 S1jWHG+hDce2W8CqbKblvtji3L4tT5ptCqclq4VcN4efHB7HsMbMHyWsb3jbxyH3u9
	 h3kEQpDNbytNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE3FEB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168772998869.25405.17001440573744524591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abd5b6a8b5ef0ce8b0b8b0a035c1bd9247ed6f23ab580b040ea740d2cca81b9
Date: Sun, 25 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687729988
