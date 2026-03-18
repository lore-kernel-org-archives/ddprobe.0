Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B5935E950
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773821694; cv=none; b=s+9FDi3xEsq22NMC/TU6KWR5lXYCK2yybd4XtHVGBTBvxP6Xf3BbZDxuaKF94k9d52LEofR5GfRpgMv3lzuNwzbVggA9m3WBKzRnOF+gI4qoKX4AONIPDaZGDKV7UySPuiMyafAqCnbQniIGvVRDXZoiQiYw5BblY/2EmpeUukk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773821694; c=relaxed/simple;
	bh=qTrNqzbQHXJUEtCaAGWGuOIQ/LuTmUgI/qKYjiaT5Rc=;
	h=To:Subject:From:Message-Id:Date; b=Il684D6aI5AdRDXHQ7Mx+an8OnOV6SWJeJMaPAjbzk445Tg85GqFk6sQM4DkCP2ODuYl77kUbMGbpzEMoalVyVsXg9KFSQvAFG3wtoxS9VF7IWrd5766d7aaYYDgj3EBxzEtAf8fQQ0h878+er84MxFSm/XoNYJeQH0lXmb66/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj19/5yi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj19/5yi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E011C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773821693;
	bh=qTrNqzbQHXJUEtCaAGWGuOIQ/LuTmUgI/qKYjiaT5Rc=;
	h=To:Subject:From:Date:From;
	b=Zj19/5yiYShGsdSXjwfRxP5+bUXAXd90PCazJeQQjjO4AZyMB8XxrmnarB90SlJrT
	 Xsh1hpkw6Gr+ES/hUt+0okUGOhps2uvFIlWGKLJ6vqNmQ1IpM7drW0gLhb3t58lJuA
	 85HgjI4lXRg+07TBmmap77rqp7ZHl2Ld2S0yRAKP6WslDOxUpJlFlY/vBjL2cAnhtC
	 wlW+4bxKvPu8yHReUlhbMJ6cFXBYtDvnWcFH2cEEeeON8oNbPjk1NifV73rfk5gr/N
	 9CHSkij1eoDPaZnUnksVPWOAxH7xkqJGnD53+xZbadVbG6gm5ouKrH/PXUt14WvW39
	 +fo5zUlL32ibw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90756FCD0CF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177382169358.19520.7054031844315472002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c09b9f1bccbd3a27d96875ccf761ab07320e65e601b1dc6bd55fc37a6afc15a8
Date: Wed, 18 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773821693
