Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D06EC6
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5548C433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690948928;
	bh=4UMd7hPlTvAWQrm5wD7GgC6wUF/XKHIxFraC4sNAzY8=;
	h=To:Subject:From:Date:From;
	b=fBTyOBeFVCEOkQwIqk7ySu3dLwPwXwxkSNGvr4cxBrUhDDgdIsp4N+OnMW8/kaHsF
	 QQIhDPzk/1fl8fREBGusVlUCA42Vy5vthaoQCcx8MV1OxVtQ23znzyPh4WWkrrHxr1
	 fqu3zt63GOzTxmnqRPhywpd71VGG4nqCMcjl+5nFL09HAZJUTOjfRgL2qvqraDAH5s
	 to26+KA0Vm7H/eBDTe87uJD5ksMpmjXkH9Jfz9eCOzVXqiYE4tl4wnJRjsoygLJ0Sq
	 lcMPDMCH8ySIB5cRQefw9trVB0JS5aFHBAQzdyJw7cgBbb2ArGVw/j02YbAHt4PDJx
	 zKgyzeMJbes5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77E2C001DE
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 04:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169094892867.13465.1311068919512736787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eab809f050a3e4197f8f2057c04ac021918b39de894ba574b0399d060d1666a
Date: Wed, 02 Aug 2023 04:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690948928
