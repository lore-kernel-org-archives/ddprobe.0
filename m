Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF60EC5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748325594; cv=none; b=uR0MLfCCgpK8FMRa3fY+n5BLOaxqlJ4L62qDpMQIz1HinoNMWIE39NYXwTsO2Gyqu+BeG0BhgZLyImVBTFd2y01W1Pu1vSqs5SFpRQ/MjnEoZcyslSwr/4mOCIGGPMJ5j3Wa3v8IFKxuITqA/tT2xyz75tond72WirnncBR83AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748325594; c=relaxed/simple;
	bh=xjCqHu7NEQ264E4vsyeNuMp77fTBtWGWzfbAFvPl0Ms=;
	h=To:Subject:From:Message-Id:Date; b=sYexWHdRoFRvkQLsbp6oaKTTqYTzyamSuXxeAOqBlmcVjZmt0L9C8dLr5krYq/TAltdBoDmgggxPvdLVNmXdBsOmCwpm3hlsTV9+zCrEmFsSi2TVQdg2+ARH0WXxBGw18ZtEw5W1b0tVJtjl/UDYCPnBFd+OEHtbTqYHTSGVbgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNasfcQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HNasfcQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748325593;
	bh=xjCqHu7NEQ264E4vsyeNuMp77fTBtWGWzfbAFvPl0Ms=;
	h=To:Subject:From:Date:From;
	b=HNasfcQC5uG7hthckHLRrEv8bBUrYYW3vb7G7yWAuYlkhF2jpxWJ6NVFs1SU/Qpkn
	 kuotvihPOvqF0DuOG/2KcHtZVBYM7OrjSOnAvNyNaebYSkIfF3H8Tao4QfR+AQH6tE
	 KZOl74pJ8KGJ7VzlByctLQnrKgHWf65ET3gk6FfokzgggG2C/nDsTcvpl7z6gA3cuH
	 KZ/2uTtrgpfDkk8aWTw+0K4t1ufkUewSFLHoAkqnmn8oKmrYD6bDKBvc35xU+8bLTf
	 JCKN5+6ciX3DMrVz1wmH7XGGPXnvrsrYPxvue+UJRwyVreMn5NCB18p7P1T5Jv8Ssd
	 cLy3srE5L+Eog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E15C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174832559358.11967.15045469783615394790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafeec785af33ee194a109e42c2c137053e1b38630f4ee30346341d6bb61181d
Date: Tue, 27 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748325593
