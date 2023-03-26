Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4051C1377
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AF3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679826125;
	bh=f0Jvo0RQMgf2fkVxArE4uasjWJSHTEsw6PqpxvUxjL8=;
	h=To:Subject:From:Date:From;
	b=rYrS7jxg2mCC8vqs5WjFh2da9Zs3bxM/b54YAqaULMmlcIh2kRVQaSumTKjYqgR/Y
	 KJoGEZP7ivUc44Fg0h3QD6UtDzdTVmXjcNt6c6YLIgMiwMgI572HEnywHmOjNmUwBI
	 Mh2y3XqYSf+gQ//G24QEvo02bTQboRB6y7KtctnSS01IxlP4V6rzGX3TZH8f8Jp8sW
	 bR4UY1ZFBiW4+DCe7mQ3mEX0v66a2F6/XBKTxsJqDwEzwwUIlHX7QvLDsFdCG1NrdX
	 oURXZ6vp94DlucO/d2gMVAHAeaLigrYz6xt41iCM8gG4DzVUQoTtPpNOuxmZGeBaZa
	 o0P5aCCkayeBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41E9C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982612577.8325.13810321534629185866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf1afffccba8e027c95414c0cd94c5469a5385ca38a752ac9978c070e241f46
Date: Sun, 26 Mar 2023 10:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679826125
