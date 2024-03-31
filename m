Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B820414532A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711924096; cv=none; b=kZnwsiVAsxd8O6CNqiORcvqiaf3LU9z9v9k0NIfEOuafH67n+21tqht0DBAeXxeHhvvo69x6wsEfBIL6ouRXBycYyDGfFwg3mB0We82fHDxvspvFr0dcbSCMwg7gKc1bY8UQUD+5uo4+HlWGrAkxfgRE7dyKrNk3bWpWotjeRLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711924096; c=relaxed/simple;
	bh=Zzx3NgKZ+57oWVhp4JXYM0HLhkn6pMqKxyEO7c+nwvg=;
	h=To:Subject:From:Message-Id:Date; b=PV9TEk7V4hyhyS8UsSCRjQXLL3r9lE8WxLkVCj3sdzaXYk0EtZzPcUusaYqqBX+AosTQBvF03fRDRQ0us3yTdg1lOcl2WAqUoq2ifs3JRjRtCepSswDL2xK7mdTs/imq7Yu5G0cAcuUw2GQqmDMkGm4fBJSF1353L+OfXvmWXrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TzQiSw2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TzQiSw2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA32C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711924096;
	bh=Zzx3NgKZ+57oWVhp4JXYM0HLhkn6pMqKxyEO7c+nwvg=;
	h=To:Subject:From:Date:From;
	b=TzQiSw2KQs+z/1zXMIDnlIe6Aqn5GtlMS5buA84tHn+xDeIkfFjftPhKobp1kez5x
	 z1P6Q0OCP/qVLAg/oLwrmdXDZ3VgrU2iVdUOW1hO0ZIwhDml8mtMvVCOhuMm6FXAHK
	 uRJux5+S6D6uXwgK8T8gb2W1QPGLZ5pGMwcrUHiG70zvzWRI1OfLv3pSEytGTHGTqW
	 KYseiprKudQj6oX+587ZO/1K+Zet3jNvXsRd7MjnGi/FG+1MAPpU8uLN45LKeERnj5
	 rmSJO7vsdo76QRsJxCfXA/wykIfpUrNyQk3zthlNrHayFCWtA9MPtUvq7fZG5aTCOc
	 l1s06LedHJ1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6754ACD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171192409637.29420.14316413550123300164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4022f390e0776e1a3121c8217b45edbb9f7641936654bd0e0751f5655161f11
Date: Sun, 31 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711924096
