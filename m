Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34ECD256A
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4DB8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663582853;
	bh=JynAzaFCgMkdIHO6QimbKK8ZurSkkxVcDCCjlSbfaRs=;
	h=To:Subject:From:Date:From;
	b=myOajVy3hy8D/8MFIUjRMbhgTe+mGXR9GCB9utTHgcSvo7LY9FmIjMtKdl51/IUvk
	 bHuHlzI5nYtvn1RSefltuLeZfsnE+u7m2tbjeHxww/yOrtvrLAkpfPFl7R/xpn5Tti
	 IYZXwO/0JIKnCFQbwmFGp64lql/x0FYlLRtOmQ7xyjtf/7U54aRac+cpDr3WTenyYg
	 AGbNRnTzfpYGyGkAuSnSeD4D+zJDbiFwr14Kv7EObcAChGEHfHJuIihDD7d4IgjoW8
	 QXG9t2Sdg9PUA8kKTNMGMol2Qm2/CW/4YPB8KN0u1U3S4W0+w448u+CzjXosqFBffS
	 EBvhX07csqrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC3C6FA95
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358285365.14508.15961467978365820232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954788172ce8f6a326d1c46dada43fbb9afcb468e4bad02283a09f7b6b14e170
Date: Mon, 19 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663582853
