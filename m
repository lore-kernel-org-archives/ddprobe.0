Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35AD182
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B4E8C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672635087;
	bh=JHrptXk2FOq2Yj/H+CflDbP1k9JSthbFsGYD2+0NyHI=;
	h=To:Subject:From:Date:From;
	b=RuZFNxNMGB4SpyJRPeZPoDxR6rNKRBnwgksRuEzgjws2kWqxLbs38IkW6OulB+2sI
	 So4UkIcZD2Uibk0tZhkDDw/zWpv5PkJ31E7hwbXbUvxk1nTlo6oO7E2VSMBBX+dfAp
	 VqtmdHt3Mr6FZMtDyjakoDivfu0gXCjGYPYlEmJPidofxpwT90yiI6HE3W4FkYViS/
	 MjiiSv2vYGJCaYQelgEQejlvbm78CNC99VRi2Ym1TxPPtfOIbCm4yLd0Ksxa3rlTf4
	 A4Ce3WdzVGxU7YtNa9eFNUwPVqKIihsx8fK1mhTzAtSgeddM1y5CsTaaKCqTXCiLyl
	 EWbPHSVRUJ5Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D74FC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263508741.24478.181109269818400099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4538b11e1d22e66c0b7ed777b203476e26593a68147cf3383a346bbb0f79ff
Date: Mon, 02 Jan 2023 04:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672635087
