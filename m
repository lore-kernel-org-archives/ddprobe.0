Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114AE17BB35
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718111903; cv=none; b=OOK6YR1ubdwKLXYq3HTWbzz06BCeEwS2PT3krL6PtxmcLCA4DVaiRnu1WRlB9yVsK0SgRa4jB2sFs5l9vM9HGq+RQcBk0zqqjj0sPavNPgiqTowka2LMYJIGCDZgiqHlXKkoOgqutrVt+J39fNkD/6ZsjS/VD4M7jQBH7phujb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718111903; c=relaxed/simple;
	bh=ejUxH1TgCw+HvC+4zwg0s4/ElDOhE1f0VqnfjHFVQO8=;
	h=To:Subject:From:Message-Id:Date; b=tlDBQ+DpQAKzaDmQUsuhshTndPbhR4uvKFLBv9POnPQrCd82h1Sn4iwswKsA1U2cw4yZQfw8mEugWpXro6sXgWQ7wDRMOcayGj/sT4iuInqB39AU0XiBzn9kjU2g6hUhk7eFXIYf35lzqvmLaE1tVO7nur/ZYwewKrRj/1Nxeec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHZibSPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHZibSPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98F1C3277B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718111902;
	bh=ejUxH1TgCw+HvC+4zwg0s4/ElDOhE1f0VqnfjHFVQO8=;
	h=To:Subject:From:Date:From;
	b=aHZibSPb5LFm3Mq7rCjuNynKG2B3rArqgfufNDU1MliIna/LsCDbGUtnngUj6xapl
	 n+Bn2rJ1v1oVFI9xaZjJXL3ngjkQUttyHBNguMkojd+bOK101jQ9J9x85Pia0PxOPa
	 Jy7EB2QS8j3dHgneHwqjqAuDEnrFJpgeZzSMecz8JKTKhPy5UdUFPM15h890o/OuE7
	 SRsg1PVgpo8/d8WrKs4Dj8fAKaJXEZP0X9WZ2AsTgRyzTLEk8HFJNMvROGG4TAJ48U
	 2N4qUNZTxuOvz4ytSn2jTpIwsxO340HHm7SS3EPf2fGWLacjCgsf6e/oiVv80zZkI+
	 ptMvIlUvzFrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB779C27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811190276.19887.8952013752670234572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8602c175d2530d41caa519179f800baef92972b03568bddd88244f07d24299ef
Date: Tue, 11 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718111902
