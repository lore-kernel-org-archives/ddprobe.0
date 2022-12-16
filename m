Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F9F2F3A
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90CF6C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671216687;
	bh=+MckLWF03MfOEEWwtJd0dHbbOk1ROP3IdGW0uaI60Io=;
	h=To:Subject:From:Date:From;
	b=C/EPVT3IzYq8g4MSV1f61H7vTJMpYSxB0/6FD/WY+67Cy/xRb9+ev2xZhUrbqnvcQ
	 Yw7lfQtPLRHZXihWtEJtzN9oYhG1f/06iS+Mdg6yhOcIJgXtMTidqVTWWmJq4ls320
	 YwSu7m6OpnhEGTMeU5uzlLWsX0M2N+7AtZ5r0qjnJeTObylks4PThK1mVyPstwGE/9
	 sKLEBETMYwCaFE8EnAUlXX0iajjsve8mUNvFgKpfODLNi24dOhdOAHgk24zXkw0h9a
	 bAq69j3XrkU9Ql98IXZzkVpZBfd/+43DhSGB3kbBw6qIURCzGEVtTkfuEfCleRWfvJ
	 c61Nm11rRxtcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77E4AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167121668748.22830.13039346741245972460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0faebc906bd9396432fd794a8ecaa8f0787d3a1296a1cf2cfee685664d8383f0
Date: Fri, 16 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671216687
