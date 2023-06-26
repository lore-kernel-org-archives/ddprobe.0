Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A318A29
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CF0C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687745588;
	bh=uNbvD0di4eDe98wFV91d4u9uQgKhhyPWL2EranKuJko=;
	h=To:Subject:From:Date:From;
	b=JiYYS6A15c29vmHKIQObRIq18iM43DlhJtI64WVU69x6Jue4sSW7iCYzYojYY9M/9
	 u5U1/+3rRXIdxckxxna8QbxuXdY69o9dkWecLz5BfUYKFZ2TlPc9M3RjkwHWXFgxU7
	 4CjREpapQHoh4WfjM0AvYS0KyX+Vgry9X3j0zxE0/ulm9pMSqITfODVhqalZk5lxI8
	 XUPskLkFMqXFNUaaJMn2LZw6e/1n5Eb0mBm7HLhPsd92Y/7XV/RQL8KyF7dbgfIkyx
	 NfCMrsh4mKAzESoTFaCAv2yi2j/8UAFNhP4lT0VzruBkKNCOiqpKZVN3SbyTZwyDU4
	 aqw/u0SDnpP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD667EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 02:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168774558870.23219.13136382422187726519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 744710d4da8506ba768d91fc219bdc924696eca50444532e4e498313fccf7dc0
Date: Mon, 26 Jun 2023 02:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687745588
