Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8171CABF
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OucHNnPz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E90C433CA
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701257296;
	bh=YZwaVBK56VezI2ImK6JXPUjZ2d4FXwIBLieGjojr4ZA=;
	h=To:Subject:From:Date:From;
	b=OucHNnPzGr2BzfOefDMPeBJ/k1uLuGHcQNSAZ5aw3t+JpEnC3o+LEI0GUVEGM24SJ
	 HUq8fDlHtE7l3eA6v7WzN2cdsxIoEmUF+i4Ig1hbyT0fsaWxlpDFdi1ECkf6ByYkx2
	 WwgKFh/kZaylH2Gw+RPwKWc97X8zAadZ6RVjsW41At8z1chVlLdztU7dXkfwFB4dLf
	 LTF3BFhkz31Y+npaKkWVzG4gezrSCRQcLFlGikZ98smyEYTP0bBaK+hL37GAMI0WSz
	 KRMfpDJgkACRyFYGy1xF2a4nJylYdYFxZHX1bW+i1p9mwqRlxYkMD6xZbxU+XmSUdc
	 +QetfbTrMjkRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F73FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170125729638.2743.22386908119848962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9871300245da2dc352e313000a2268c0dd0db05f780586bb42d582186d22e871
Date: Wed, 29 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701257296
