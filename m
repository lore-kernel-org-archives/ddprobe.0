Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDDE1C286
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DFDC433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696336568;
	bh=c4JIKiQGP3Zc6i/SeIerbtighK98futabDPQ3Pxbulk=;
	h=To:Subject:From:Date:From;
	b=HUbREM8uw2CVZLfgqa24segdUy/WIVRNZt/nhww9loQsfC5helpognLYSnvNbQ0z/
	 ZXnDQJ0b/qgdMrh3XjndYgUTUaeGWUv3NNeB2YP29Ah7o1Hh5mIkaDp5IXlgS+Ppe+
	 qCzhJc5ufnm9NuHgPA5FejbKwQF8JfNDxFQu94YlhLT5yKNXCYpPRa3dIGtWKiDewA
	 P/RhAqFwo5R6HBTnUWsm0GBNOY9KTfagGQ+2GPw44uw8fHrO9aZ3K518/r6iY7EGQs
	 Lz+kAFh3sRuYiXN5fIIIZsTeRFsMfPKKuI1GJNqkOTSiDKJ4Xqny9O/sMHRHWAbN5u
	 El+9MOrVhOc2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C44E75457
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 12:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169633656868.16240.9958485532385859360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289cbbd00b22630a9279e56dcbff844a56675db357cb24870468e1ef47580176
Date: Tue, 03 Oct 2023 12:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696336568
