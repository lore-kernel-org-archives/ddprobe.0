Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13716EB8
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAD9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672207287;
	bh=LOF8OStZfxDOlsd8MJcZ3NibS/UZ4ZpC11gJALJMPrw=;
	h=To:Subject:From:Date:From;
	b=R4XMuKFxzb3DbfGUW3xvovLT7JeP56ZrLMTBQUl4uf4PsVJY32oKwUHVEl/6f+rjn
	 NyROfsjL3OcVjWnwWi+5nvn0D0AlOmoPSBi/E4u8NTdLPjXnZFbWysooE0sYquDF41
	 UgLet8sCO0LYIG1ZZVaB2ouYmwwJKOHZHbHV73U7uaNgJ951Ru4FnmNO+v4NHI8U3t
	 PvbyYM6NirpoMdLaoXRpFexna7OGiENDejFjLbOzj9mF9Sfp6zS7+xHJ6QNaZeotUt
	 X6hLZOHluMp9+34O99ev32m7FznzaIpvPpicqqxM2JFdnZr0iDgg9L+lzMh6N/9w0x
	 AK99UbJDGeH8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8974BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167220728753.2803.11906703614884251606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc45a9d60803b503481deaa94863d3d7d435363665a08e1fd4ad68f9896693f
Date: Wed, 28 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672207287
