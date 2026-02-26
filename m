Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C682EB0F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772079894; cv=none; b=SzuDBjBTVVG0NjM/rfgCwnQH0+Cf0PPslXMNQLEJpbY+iFocU7PecY944NFU5W1CFlYY/Y44W5VUvScc1G2ZI9REwcWSvhSa7swlLc7ml2QRF9QfLwEiAXEG6PFtMoXE0+0PqYA1jPjGiXaLCQx0sG5dKBA9cV7Hqc/jWYXJrlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772079894; c=relaxed/simple;
	bh=ElRAMHMiZ/qAcun3cRwgtu6VaPP/fLtNzr1maPQ7euY=;
	h=To:Subject:From:Message-Id:Date; b=rkucRk58Yp7yTVODCRXyUTbm5eDchyezbESs7ewvsSoCD8htiPPrsmLVxAfkBotxwuyDlxNI0/buy9uHw0cfDzcYy3C5mgC0iKKst38E/ieXFrqsOLHsnkKiTBHqqpzXqe7FKbLdIAlz1kAI01eNtmRE/6GL3Zhuo4dC7Q28EEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGv81uNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGv81uNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C233AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772079893;
	bh=ElRAMHMiZ/qAcun3cRwgtu6VaPP/fLtNzr1maPQ7euY=;
	h=To:Subject:From:Date:From;
	b=nGv81uNC7ZkWbTAXHEW7ZYa72KlQKGLqEaFlfbfn/PsfWaGqarYzwqJU/QvHxPP7R
	 0TjRSn7ze1RLsSFewtyyQGY4Z1s/ap8qDFvt3np70nx7StKcfEm+fiRwVf4brWLgkK
	 iRLgXXyRD+8OxrCXLU2r8DXpsYM+QPj0CiccLTnWGZqaJKZCWGVc2RnbnoMvT7KlXX
	 4/SrhppsMiCQcHlPBDGM+WIUJz6hFVrIqej0mie5NiETrTYWQwsc2dSj98zTG/8EiP
	 XWoiGY49FXJ5kUak2Zd2UC6MRB8FuC0Hjk5mShRHBF2LfjTmufgCy/FTtFUGi7Qn3j
	 SoSInv+yxoivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F16FD4612
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207989365.20789.11371980698255459205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97d644beaa52eafd0a57220e18e0ce5fccdda4962839541e159f3f0792b107e
Date: Thu, 26 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772079893
