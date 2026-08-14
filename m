Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462384749EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786714834; cv=none; b=M+UTw/uJj3yUgZFe1UoF19Zu8F1ImWNFRA/IkfhMB/otoi4oBytjvUvqK7K37U5UCYAnWAi5R6MC4OkKdqZGr+ps54+owOTF8If7Cy3CZcU2vObmVkhAI1YKJBnD7JR2WdLiFOzbResWl7dckTuYPACO5kZlrjw8ip5MvFgrYUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786714834; c=relaxed/simple;
	bh=sK17Gru5HUvALaJZ6KNKNpFkt1RnXt7scnr4fDW/GKg=;
	h=To:Subject:From:Message-Id:Date; b=BhuKjMu9IMQ6xqZaLFjMA+fNUKMTZlY4sw+L+GdZKefNlZwAheeGAUqj/a3IqykB2pMYOFpD1H6S2Z3y6ZeINYCkcDQ3AScY49NBEq9IoqydGtIPPavbcXjKvSbiezaEX3tVYvzXJPUqUnXe2f4edAhipP2SQzn0tMls46AgCnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ/EG08K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ/EG08K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9781C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786714833;
	bh=sK17Gru5HUvALaJZ6KNKNpFkt1RnXt7scnr4fDW/GKg=;
	h=To:Subject:From:Date:From;
	b=IJ/EG08KkFcaJ1yta8xYsK74KRsV1ubJkpuidGbIfMb7bl7K1hEKFqBrTNbmqkfrl
	 ZE+SEM7RnJl0SQ2Fj7wXGNUaunppowB4hW/wRAVW1/jZn7+w3ZUFW2Xg6pk7K7FDy4
	 Xc67LFwH1FwCI/eCtAe7ysu4H1g2f6UxEZPxI0BwZK2QuWDe4Cp6Xag9d1mqoLAsJR
	 aoFHBqurxQTnSweItDlWyNGgoGKyeZcaUVfHvoVuTBBla4r8J3NMmiVb3mXKTpu7YJ
	 FvrBVjM5RnyBnRpmRcTGSX755cLdjKEiXOM//IxrdDRKgLZrJnxH85LzEHy+yITJbL
	 42h4dv2cEKk+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FBAC5CFDB
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178671483367.22599.8634078642507725892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d9743b298291fc54676ed76e41aede4fbec789618a8a453de1206e55688126
Date: Fri, 14 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786714833
