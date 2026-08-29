Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEF43033D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787992834; cv=none; b=aNw3KfaP+7S6X2INxFBJHt5WGTDt+gxAAQi+yZros2D2ABrdu+wNlZewdpg87Inyk1FIQoAcuKbOnFNOTOLIFuN3I4CLjjjiVBT4b4IWUckloIRt6DnEmqTi6cEjWkSaCYnFV3bd95kg/UIdYBYZoQv7l4gqvQxjpi9D1+Rruhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787992834; c=relaxed/simple;
	bh=UqQz3m/XLbi/sMNHxo/VCJMdq95+XagHSAqbhnBYqYM=;
	h=To:Subject:From:Message-Id:Date; b=pNnlCwpqQmnjoXd5ze/j7adFigVxS36st08Sp8OCRBN0Bbd8e7nJWxdKJDYOBAaxNMuNjW0JhVcSfa+UDTFNf46Bw+8QrhsKnDAxdks7Q5UXhJ2004oakV+pqmOlMkV9snINBlZLLTg4Y1nB2Kdyae7ZsWEmw6pf8wQ9Vnq8WWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b79GPQda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b79GPQda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4A6C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787992833;
	bh=UqQz3m/XLbi/sMNHxo/VCJMdq95+XagHSAqbhnBYqYM=;
	h=To:Subject:From:Date:From;
	b=b79GPQdap/jkSO000ehhOFQOARJSmeC5kF534WF/M7eoJuJhlMJTVNX0mJLlG4JNB
	 HweVQCCS7jHs8rkjv3SdpcraoI9+kHM6gQQ66QlN0wvlShllbIJeaQkKaWKy8eSOL/
	 d/X2ukZ/mRDkeossHU1isQQl+4lgj5s/gz1z5QTT1yDRZmvllp3vyFzAR+1QsH6yMA
	 wPzWUo42gyQ3sYB+Ys2k4SpPFDWAKtONGYrb7PcJtiS7pOr2vGwUD/0sO16/PbB51P
	 oa2HMdXMGKXAHG2UiTNRgqKnhNp6BdMBhu2YUANqxKE+XLQ2Bjkb/4KryFSMJ+Ozyl
	 +40b+yGY06O2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB37C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799283369.999.14630051553157995531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b1765819bd4c8dbd0af139fd05820439c7398230dc0d2787418278a2d96261
Date: Sat, 29 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787992833
