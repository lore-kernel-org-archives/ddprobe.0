Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7FC136C
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F419C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668905454;
	bh=YZY2AfDPrldTUVYnLMsCxDLlB2IeJmqeHkamir1zgZY=;
	h=To:Subject:From:Date:From;
	b=GLuSLGqa7JBBpV+6m7UiOh29vovJTL1NL7MR3PPnI2GwlnbC014ioUH5HJSVNsopO
	 U7RgffU5AiTxm7cZrlejUIsJIIGp8vJ7QAtuoi7Qdzr+bpqSNdPf62VTTtMj3dKeFP
	 WQCyNsmnJVTZRLlD2ad232DxOGpbA1mpVaKfb6nYVWVNOBlE5Ru+zVqFHOIDvgB7Ce
	 gcUm/XOLYg2H1mbrqm5gXFp13cNIC9DyIN1MBRTcr0YSdgD33RqKD+r9NB0dFuUwsd
	 A4hUcxz3+jhsUoK46q6SVhblRdKg92UtvdNWZrA8o8FbOKDdai9+PlWXWBhzPsSHsF
	 GTcZR8QXvYmmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B71C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166890545433.10185.16173640555627063751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1848ee4053157fb9e7cfd23f132c9f7ffa88d0f3eb6a99f2eb24a0ad6c44e231
Date: Sun, 20 Nov 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668905454
