Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DE42AD0C
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774746294; cv=none; b=MdKMseinq32L1dCFGNRGZXwiDN4VLD7qMncWLr3VP/3APIuZPgP2adyejlly3eMlAETn7aPjnY39ojtZBiQlyALuWAYoUwv9nxQ1qFbVRjIxSdIrwF2cndFvlsDnINRS3XmELWa4u2yjrxNHg1T7zUUZ9kHVXWttkYqEX/qAFvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774746294; c=relaxed/simple;
	bh=xvh0fuswCdIOARQ3tqX5pES1ceZ/qANW7wKvC1MMbOY=;
	h=To:Subject:From:Message-Id:Date; b=OBuLI9mlw81XUIbiSXTsmSTiTGC54pSUdyIH5BdUuZt3N3D7l/5eNYvIIPSPB5k5OWmn4SMsv8zDG2m3F8LyGYFlEbQYJZ73DR70kyEOsLJrTtJ1Q8Ox1A4UYRIhN8Z1cBs/IO++jRfNOjfOFaFJiJsOk9QkTv/3PEcoEIg3nvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbXsqNiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbXsqNiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A48C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774746293;
	bh=xvh0fuswCdIOARQ3tqX5pES1ceZ/qANW7wKvC1MMbOY=;
	h=To:Subject:From:Date:From;
	b=WbXsqNiJbznEogNxUVoZeoYrfNc+Q8281FRorylYFqRTyAjzb4PYtuZktoe+xxJdE
	 IGWRkSqAzl67JNLlIeWfqIoHudGVVBADSvwgoeRQa4N8wr/pdu/P11/ewv7tvzwISL
	 bUJj20/qUCHLA6b//zYIbqCfYxaEWk6Blo2hLtsiEwtbYZKh1wqjI0y/8FKWhmNDA3
	 xHrU0apVRV+CHcUmi2uWIeNAGqEjOvElTX1Ng8xdAUpOQtdTxNFFrVAjDyEMwbrxg5
	 b5nJHaJDGxIP0mh1wYlhCHgOcWVCwbRMzVgffKq7bG8/jMH0OAZJIagn4kcZzOn9YP
	 s0Rst+H5I39pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC8A10D1491
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474629358.31671.14507127347957466142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd49074b578cb518aa7fff929c7afcbee9363aa69f386db914eb777ec7ec403
Date: Sun, 29 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774746293
