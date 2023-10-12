Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFA32AB35
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 14:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R6v50hLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65D5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 14:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697119628;
	bh=rWofdleEPaZO8py2AsM//TLQjJSZu7QvvWqtxveg46I=;
	h=To:Subject:From:Date:From;
	b=R6v50hLgv/HYhg8PFr+Gz3TkDSff0JM/Fyc/+fDgQv4ic0LgwnVWT0q6cUavSBNQg
	 uP+KVJYGs1hL1/H10EIqkc0+zzUxUrACeq9zb2smVoGup/UUGfwENmeb+sx43aX3EE
	 y9lHWEIGzjEoz8HXlYmZqzlhigTcxB+BdowJJtd+UaBfNo1rRiqAUcM2fTYA/PUIAG
	 2dSiFT6tzIVlv0IRSLiALxWm0x6IJoVGtogDKtARM39F1JH1jsgeM/WgFxFB5uxMkx
	 fO+ujrsoqHs5tVaYRhnt5TCFCw3ZCfqIw3MrEVcWZ8g/UniXTPPu431/m61HxYOX9L
	 V0JAyGx+U6N2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7030CDB47E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 14:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169711962867.29250.9531086492058551212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31d336fb349308bf4ebce28f393f9c3e2d04bad9b3b32d0fc069219ac3a4f59
Date: Thu, 12 Oct 2023 14:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697119628
