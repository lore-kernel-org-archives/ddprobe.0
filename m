Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE5C1FD9
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703B3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664599253;
	bh=HsGEjGvDHzL+dpIKj0Q94qQ2hFgBmBWyRBiyME/Zkeg=;
	h=To:Subject:From:Date:From;
	b=Vqo18yVKt6f2ECxQpNkcqdCINPeVjYfxB4BafL21Bn2EhPYjJpeV0GMeJGq2aOzEW
	 H6PISAgsdH7q/vrScQboNUx4+XFDp9Yp597iKpJUJjOARHAn3qS1Xbv7BJz5Zly0xq
	 anpV3YE64cqqhU8SUMTZ3LXIG5W8NbTri4X1QuYkX792Wkk9jIlpj0cE18hbU5NvLG
	 MbUKnnGcSPLAVUdeHC7d4AM8a0rXeJ7VPOJZGhsl4bP1BCAllXWThaKphqexvAHSym
	 WPs3bOe8c0mDZDwUoX02dRTlWST5d8X3bGs5QWuDaDpWN21ouPEo474Nh2r+C4MpWv
	 X5iz0rEY3HCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54ACDC433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459925332.13482.12328343185490070762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c69b54d79cb3bb3ce29b8d7b957e59f1ba8b92709f6939d15e51b890c6468e
Date: Sat, 01 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664599253
