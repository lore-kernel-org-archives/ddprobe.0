Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9042F47
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D57C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661446852;
	bh=A+xbTO4NCuyUQeIE7D4HIWO8yjCjmCyUIRWsSVeHTgE=;
	h=To:Subject:From:Date:From;
	b=KdSibu2WOD+iqdTY0zukzt6YsyQHUSpTGQurbZHrbS3fvTQK1y353k88A8XqIjh1f
	 mfHDguOEDXGLpdvhkiPP6cPnMFPfQsZZy96uZMFt8exoWQptocEHGxqZEr1fyKTzJ8
	 ensCC5eqcbFlvJdpqTko33i7UeiFkHNlGr6kwJqmobU6oUn5uvWWQ2KigniDHs57Ee
	 EP1qW0cjBiVYHXxsWAEFhQeXciuazxSVjgR/0SDhWuZRxsd9iIDEPJggiTHHR3Lxso
	 NGMl+eUA1iUCTZso/Ueq0xNPQun8hZWjeqxYigD1Jobd66RFs/PJ7xk9YRfwa7kA+X
	 T1aecdFssU9IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6075CECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144685238.27140.1510934702063060099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74236c53fa39f7b13ec12b935a146511125497db34b650b3e0c57fd56f8c5c6
Date: Thu, 25 Aug 2022 17:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661446852
