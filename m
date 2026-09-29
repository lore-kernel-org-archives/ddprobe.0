Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F26F3D8121
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790713834; cv=none; b=mNVdfzbWzFT2+6NXFlQozTlB0pvb0X/hohatpVp5fVR5yYoY+JtjoAG5Zf6Knl6zY42Ld78mw86C2InE9VNHzOem5s2taLTj3DtLn7H6DCL9EHDcAhnLIYzwsXYYi+SK9zMGhWDsctGmBxzhlD6fwf6DjmufAoQ3sI24HruFT5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790713834; c=relaxed/simple;
	bh=qKwnvL+nUVArNOVUScbOwCXBsrYIcd0/idFbeldfhpU=;
	h=To:Subject:From:Message-Id:Date; b=Wa04rqXDl4W+T/smhZaYyauzY8VKMi+aVPXX4QjFgsEITdRQsAnldqBIscm0Fj0++geZ7YBPu28S8WD1KfCbFQ+OCck092eu54piC8DoR9a4hJ8W3pVYPkPrDMRnK6tfviApzPYAEgGf52xI5gUerrRRF404GIoc/3+burZH8oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrwCEeE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrwCEeE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA41C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790713833;
	bh=qKwnvL+nUVArNOVUScbOwCXBsrYIcd0/idFbeldfhpU=;
	h=To:Subject:From:Date:From;
	b=VrwCEeE+HdkCnNscb8dZBtQL9X8XhV86oLVYeMiOwN/rGnQXtc5mFwC3zmEX3O4R5
	 pV0L06XrAyTwqBt3DXqy1OwZyioUGmcB5dkkFV0H7p6t3EMyVDsKlOOK3Ag1KSKbo/
	 KsYci6nkA+caS6YU6KC7TQ6D4tO+G82oXa4E5X4RuWK7KMGt2tzFbHi5PLuBem9rnt
	 3xM3pFGZvlLIo88iMftn6JTNFE4kcxkp7Ip0AX6FXiXvv3yRDJAUP0EXRiqtjD7jcv
	 lLzqGYurFrE/PwG13/pOFdORkZCEl2JLL8guDzkFAlKiAAyQNRWflXlLnDvUKKuL2z
	 nq5bzM3ZjRuIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98EFCA5FA7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179071383368.23568.12996320328848024528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208064a35871ef672de1425043134685e94dfa5dc72756ec531ad5f8c00a1c58
Date: Tue, 29 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790713833
