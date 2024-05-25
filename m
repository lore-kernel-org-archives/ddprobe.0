Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EBE2BAE5
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716628463; cv=none; b=glH9kO8ApQuhnekffPn+R0k2LvSlzf1Kex/aOPlW7kLKqsiS9UEHdMuf8y4/JKPtFhX4lgj/ZR4xgberN39Sp+k5uOeI4byrutZIL1CwjV2mM8wQReMsbqQ52FGhh+XF/8KaeJ0XYm79RodKsbKJ5TAh709Ia5dDTzyxWm5TCKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716628463; c=relaxed/simple;
	bh=b/2UpYWc1wnFVKbEYJGoqq0yUDM0B5cxlNgMGelnf9o=;
	h=To:Subject:From:Message-Id:Date; b=jjzxKCKIXixyoq30UHT+AHsJogJoRRL6U/+hehb4k7zznopUtI6Kt6+hc6PlsJx94ugtia4dHngDlmU4VMYGocgFFgEqf1L9ENFMOWx8XACWgTD7QsQeapV4IDEsTRucC5K6LoMb7hNfOEgFJyev9jZbfX54qc+R4KCdPQbUk/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tft+PfFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tft+PfFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7FF9C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716628462;
	bh=b/2UpYWc1wnFVKbEYJGoqq0yUDM0B5cxlNgMGelnf9o=;
	h=To:Subject:From:Date:From;
	b=Tft+PfFEBqtVx0jYUbWMkKrayQ6GmKn3ovFpfB0lHyBxSfb8neIS9Lfrim0bDOTB9
	 ta2Hkw0ldNR1yhB/AORra8vN8aLIdwvsBphcPbl2K0sGSWDZoJ0qkRCgH7qvQAo8g3
	 CFjGR6k695FeVR9Io7MLtJqo3W8X0EiiYlwtsHZy61xstinHoV8Scg/rgf8samIDby
	 zNC3BZJVGquWYe1KWA5dTMuxyHCy2j/BQpaeW6kmJuEU3LFazE0AUVlrEWUm7ooIH6
	 7bMG8T6E588frQKsUdHEPt66G2n+P76DcKKDME6TVlQxlKRNWejZAg8vI39dPVC61e
	 M7HVfzv9by1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4806C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 09:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662846276.21226.123390904933090101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c495b660bddcb00ccb587f63421932f7206119a3a952b844223a303fcfee1bd4
Date: Sat, 25 May 2024 09:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716628462
