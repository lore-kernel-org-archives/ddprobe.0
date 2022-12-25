Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC20820E2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89EE4C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671989487;
	bh=vthIhuUDI6ahCgHXKButVtpV93C0N0faX51DZhzfyYg=;
	h=To:Subject:From:Date:From;
	b=ZqPYDxkScAO9o1WNyvTggvykO787PCBXMIotjtbtiHpwCDvRzx7+UPDBrYnX0VMNg
	 3ruNTi6pMaecM3lHUpz5lkJJVuyRLfRaTu3wsi1Wr1lOatOL5tk4tzIMwtF2oZCLm7
	 zpL5yu7WQLB2HstZFkRlZgNHeTYE7DUN3Qy4QZrNXymc7GNXKM6uAUT+xImQa+oXRp
	 KMyOWblWUEe4cizwr8tgz3zbhwjlAVf0qGcEsxF/SYu6FbVf2BnwWpDy7W/1jTBALL
	 n8qwxGG1nNjC0HWohcDMPqM/22pilPIYBLgnOwQHamUeOOniqAns4Rwm9qeSthM38w
	 XecRSD4byPdxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677E4C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198948740.27296.1015775180585747538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1826f657515d22ab9df8f89763c362bfe3819504f1b2456c4534d7a6553c0a9f
Date: Sun, 25 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671989487
