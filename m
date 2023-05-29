Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EAB7C
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E148BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685355125;
	bh=CMiml8m80+pBFcrK6qpV2pliBgxjzHs5KgNJFfCshtk=;
	h=To:Subject:From:Date:From;
	b=K907uM1pCPFXjSNU/mLyOY8pbBEbKBc4cYcct5KQjswM+8TlB91V8DxBAKtLTgtiI
	 SDojNU1r6O+8DP1QVM19XRYM7JIAsknNg4pzu14xx83S9LbvfbHkSmmOm14NS31Dld
	 +14WSQYoJehqR9BsbU74ZFota5YVdNh44w3wXGJZKR2uca8x1Ssr1s8YMextYoOizW
	 BgXReflkf0gv/t/1ZgohO/hckHd62oDcTqkRAIj+ZuS+fWJNBjOXwbSTevSYX/F2/r
	 WqAnDbNUUc7k31QssCASfG4Drw/n56P8ZyyEsAMtUMaNhfQKUEgOa0TDGVtq8qAEyS
	 VhGdMI68EQr2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4570C77B7A
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168535512579.25601.9669120366388352178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17173c7a89de59062c59cfc76b0c33011c9333d30f8ed9c2c91b1e3d2709bf68
Date: Mon, 29 May 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685355125
