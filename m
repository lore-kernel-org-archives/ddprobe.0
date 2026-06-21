Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F8D1643B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782072994; cv=none; b=eNIJbLrhROLnpt9lgWMGbeydkhKeVXnLoFI8MqEpv8CYakuREGOAncCzmi+I2RZnMHWciMJjBLhjVcYj/YxnXagX/lISRB9BtVXQIhQuXFjdTZ0FryRDQjnq+MVUv02Vdri3CExqJTiGZsR6Rn5y+XmxWHkstIWreoBF1x+sEvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782072994; c=relaxed/simple;
	bh=VmwKyEBYQRSKBjLfmKiQLWGmlX/z8nW5036l/eJ77z0=;
	h=To:Subject:From:Message-Id:Date; b=e3yB0TbsQTHyuEQi6y6/huW84ly1f7QY5tlkmo+OjsV4LdJmAQeeltHq5j8P1H3WJ6r/JBHw3IW/YXW+iR/U3BuVvjH62pTKJ5ketQmCqPLTrPPQtNrLVP3eMOjltDzzmG5pk0aG3J/rn55aqBsXNBZvJEmbZFGztJhcLXlah10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbMuzmH9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbMuzmH9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A57C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782072993;
	bh=VmwKyEBYQRSKBjLfmKiQLWGmlX/z8nW5036l/eJ77z0=;
	h=To:Subject:From:Date:From;
	b=RbMuzmH9Si9i5AW4LSCV3Kqx/9bYkhMdV7lFlDT5R/h6sDuIaP19QI+uNB7omtsxr
	 qBZb5kCc62jOWU6T1XfJLSfqUdO3RmWGuKVh1zH+FI+e1+tkcE3vJyhccSQiA9aLIS
	 SRIjI40Cm0HswbunY/Y65ZkeldtRxAlsC+9JByeXMDm5cJ0boKR//CPiSU1RqVkTCf
	 RuW4TrSZm1sYPzonGPP8VncOm2BqR2A/nqLdF66318iZOUHwASjTycFao0lYdvtjWW
	 Nen/hNkmAsl3rh2eL0jHMKnePHi5K9/yrJSCDlH/yM+7s4+XUaZp4IxHYE/N5VEync
	 a3lWBoWtl8wGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD49ACD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207299368.29767.5774255210665851261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a693657e6e112c60315e76b02dfc1cf922ae38f27be1ae41ea724b0907f0521
Date: Sun, 21 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782072993
