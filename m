Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609BC3D8C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 06:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88E6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 06:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689749468;
	bh=Ug9OJLt93nHvChMlYpX/qG/4E7q5DX4mWIwfiD+G5aE=;
	h=To:Subject:From:Date:From;
	b=UA5Uo5loz/v8iCUu9uzbUf7r6XrmngBiaJ0rnlB+/l6/TlmsyryUObZ1qpT//1aGa
	 rd6xuKruZZ4XsgRopianQw2FT58jPQxjzU4KpK+TE5jrPfkTw4INd4EZm3sSFOR3WA
	 /kVxjfldwVsv/Wuk9GQLaLO+u/q1KQBlJmVK7BCHCmm0TRmvGC2dfFG62I4MP+67Z7
	 TcHHrtC3dja5CbySsukRtObndfDaRp9Ek98k1LuaVHUl4MZV7IgQ8zBhx1QSEqLKqg
	 CDgRuGVAmQGV1M6C3z/6GnS+mEpPf57F7AJn0Y2AbA3v0kxYES5c10lS5xmgu9+Y6j
	 QZZ2uMSdaEgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2EEC001B0
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 06:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168974946869.31009.5047661557234656312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b64e172320ca1c7a11e651bcc3000fb792e37a2061e7695b76569ad5c1e17f9b
Date: Wed, 19 Jul 2023 06:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689749468
