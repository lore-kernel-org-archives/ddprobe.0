Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BE91991D4
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779533554; cv=none; b=GDFHurxOsNGMK9dMLzdm9S02UgjNgepgbACpBdWLACPbDfZLA2Q+A3Eloj8sk6bBzAPVGxcPtjY/XcucP1f4M+GJtb4MnmhJbjJLG8Imefr/bUxjuNMWWhfaI54sXI50rgalmx/HPC3Ufv7u8LfQY4bad4tmL2Co5nClhljcaag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779533554; c=relaxed/simple;
	bh=wdpNmWh4hB4P3c9pOFfcNFq132XoZV1iEfC/iGlzZ80=;
	h=To:Subject:From:Message-Id:Date; b=THddIGwEdzHms/cxGTh47YCIHbh84qeoYoG16a/ItDY32AaxIw2aE24TVIpeQcfZgkiUDTeFnYGnvyvnr3RIjvq1QAhvwFgWTQ2Dl5xLLweIah98BT+lfNWexFM+xDWx7fy2FZlDoWJAXbCrrJCx2IiKoJ4LrdnElCynpTckXUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6lXfIio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6lXfIio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C87F9C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779533553;
	bh=wdpNmWh4hB4P3c9pOFfcNFq132XoZV1iEfC/iGlzZ80=;
	h=To:Subject:From:Date:From;
	b=c6lXfIiomZ0/8WcBeFJYPa6QHk+R7ycS8N9ltMaXZFdcj6Wb2RGA5adzycrCBMRbT
	 H16LR0S/eNR9sW/Dz8E0Xuv/3mY5v2DM2KpDd4Bgi4p62w4nmAtbyRVtVicoN3ebFH
	 H4jdWt69ou3qDc+oxgtnl3J6NCdaDcVgg7V9RO/XlaJx/szUKLycviUcdDGbhgydts
	 E1CnGgFKcjUerrEyKzGh0lx4TL9RvGw97VQ+DYGjqEdHzM9BtCxNE2w2Dixfld/luV
	 gmrxMOOj6Pv3EW7GCrTX+ggJxTkxF+TausJ+bJMp+F26OIC2966xAgTk+SwHnPb90A
	 d+XgP2MfGRgWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D6CD5BAC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 10:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953355368.7597.3571852377608456790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dcdad0f441f5288016848725efa3787c95841912d9c1004900cde3a889f2abc
Date: Sat, 23 May 2026 10:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779533553
