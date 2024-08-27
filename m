Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511DE8C13
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724738754; cv=none; b=Y8BSOPhqxbb8g+wWcbMKJIMLcxzGSZd+h2Hcy/KXNWpkdwRnrqchWXwTLFOkW7m+im0DG9L6dpR5Si702/QIYC3ltog8E6n3jR4rl/8LG1XpguLhH+Q2dAin0E6Tx0divKHqzSuyr8KGWV7Jg6OBElYoPjvzuLzuqeR1oI2P0ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724738754; c=relaxed/simple;
	bh=XYyWGjFWVMOFwNNyNFhui/Kvb8gQAFf2tVb1x4MC4oM=;
	h=To:Subject:From:Message-Id:Date; b=IAgQ2huslOADsJLH0xN48bEky8NyqvmFok+8nG2fFMQK1SZvHdVOHRVy45v13DQNHfw5IpMDnLlt15R86lleez5wri0PdgcFShAF89h+chG/e8yPxB4/QSScVFRrElUOoiC70fqJlxv5jSu1b8Oxi1vO6sMLIo0CkzLgszYgWIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N37ni4Ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N37ni4Ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83D6C8B7A6
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724738753;
	bh=XYyWGjFWVMOFwNNyNFhui/Kvb8gQAFf2tVb1x4MC4oM=;
	h=To:Subject:From:Date:From;
	b=N37ni4Urou6se3QlpXSBBdPkJAio5flvfbjGh0Aws9bjJfW8R3QyaHLlZ3O0rPplK
	 tfc5kx5sAUb+KCQ9e8dCMAsneKQvhn4ydkjeMCqphdpBOqken+/N0fRe1mpumDYiHR
	 61lz1wowwBXXAgTarpIPqFON+nsN1Lz+1gAjnttI7i+A+XkXEOxPn3E7f/665sc/Zk
	 xXtjHXe9hcumYZJSkAn9Gn8WVfQp9C+5YSSJUOXBSyBCUpibdaStVPDU9BmFw6XcRm
	 ObdHanhrwJYD0oBRFKAZbivJqkqGjHZUUxdJyNJ1f0FkcH2qLgZRqze6hVrOdsbd0H
	 acFVbFuJnUywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F15C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473875364.2620.6075145038909348166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad33ae54922545753d87c4e7d938bc1e561c23795680d2e9208993ef80473dbf
Date: Tue, 27 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724738753
