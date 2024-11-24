Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF171FBC85
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732452954; cv=none; b=tUrmelZ/5VZWooJ/S5hbzmOtw7yT1iJ20IrGAODW5dZQnBMazsWCUawZi1ye8jcTmgQRv6Xf9u4UJWrCggcFuOxCqu71qVjoF5/3NKHp1Cgy9pc6Yua+F7yse7cqWI1BItbW7SGoyIq1imUeVdWx+e7ke43z0G92LnNRSsrfv4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732452954; c=relaxed/simple;
	bh=MR0lEfR0LgYU8dQbd/MVyPTBofqUnb8H8pybiaatBw8=;
	h=To:Subject:From:Message-Id:Date; b=XEzwZEjRJ3m34MznLIw0ujhjyuH+LjoiEd6kaAVXvlQmk/xwaySz1oUDgGm47v5UIy1nU1mBVaxgSQRMOTwvO1yS1e5PuZylp+C0LPPQIk0S7RMQBtBqrqNYsFhXNJoiDQIgbrcZYtWwDR7lZf2bZvdOhbIhcr7i3xu1N/B/07s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwnNWt4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwnNWt4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C27C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732452953;
	bh=MR0lEfR0LgYU8dQbd/MVyPTBofqUnb8H8pybiaatBw8=;
	h=To:Subject:From:Date:From;
	b=SwnNWt4iAuQmJ9oMdmCDdhApO4Vth4iethIylMF3Za9y7gdN4EJdTDJqKGpAiVu6D
	 iQHIvGIHkW7MXIFbse3dNaV55bZwISUdEfui0BUFGdodC6vdPgWcFKN5MXfDVXI/ZQ
	 lfpmCIwALCmlpiMnh9fAwgLkTjEQ2s5iBRLV4YpYRonsj5nHi7tt6RhuzkFispETZC
	 9VGXc2i8zd9iY2gzNCn8nO423e83BtmMb+aYlSryMjpPDlEhrpIoaouAD+0hEzx0RT
	 oarDHExS5hT85fdTUIrS3vekxkRUdMuPKz6brKHMp/g89QO3c9Mppcqy1owquW5Hn1
	 OUz5JxiXVe/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91352E668AB
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173245295358.23929.16672661486768454493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4237ff12d6c76e390b9184472ab63ab6e44103ba56da3b452ac7f6bb009ea692
Date: Sun, 24 Nov 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732452953
