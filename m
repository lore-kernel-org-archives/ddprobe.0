Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD6A1FC0F2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740323334; cv=none; b=eZbo8TVwVohG/A5vVQS81AxcBl8HHgJ6nYL1zHLcRmS6bmzrgzh3uDXcv0sMm88I20Qc+APDBKK8Jpi7jnyOGjr7DMgVsFZe3G22Y8zC5psyz2xSbghBtaE5zzykgKR7Yker/2SCBFtr/c/asmnIwhZfV582asvMApIsxiFmvzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740323334; c=relaxed/simple;
	bh=zawvO/3q6WWjxZiVVH8j7jQPiETE7HncOGMHioLo/t8=;
	h=To:Subject:From:Message-Id:Date; b=GZcRSE9e/IQJ0gGdYUsbuqD9TCFC9XKu0VUkLLBdFIrE5rnN/S6axlB/C3fEX97X2CqAuA/qC423ghs88avPZauirLOMBFNpEy8DhRejIZKJd4IidbvRerzOCexgdlvGfXERkeiJmXAhIFvIOzgTepHdflsAtnMXn/HpUcbb9xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWNDanZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWNDanZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF8DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740323333;
	bh=zawvO/3q6WWjxZiVVH8j7jQPiETE7HncOGMHioLo/t8=;
	h=To:Subject:From:Date:From;
	b=rWNDanZDjXQcbIgypGB9Y4VLOu7vuu3qX5R5M4C9Cwes+OlsbqVo2DhK21vIBHfLG
	 gRCcnL+MzAGgQcD7pHh6SHAWXdvqIB3hp+Oga6tjY+yRbA1OfYo0QbPqG6NovkAHsQ
	 Er3BHE/bPc47O53T3fJDnhKMHm8ynZaPvOsD4S7An98E0+S9NpvfhcDyhFVY9ylWmt
	 C14TorPhnHYJHFsfuJnu/qiG80wprT/X7itfMer+UjiKAr95vUHeS3eNyVSP6JJSa4
	 jOOG8AHl9CK7QjDLkwU18Wgz4d3aI4nMol2LHJhDQeAX/kWDxaOKdF5wWNcTncyuXR
	 O6TLK5ZH1nCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2381C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 15:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174032333363.16888.17051623508237132987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e480a32961ff761934765217e6dd52ec42973c126b9d20aa2f1f591441dc83e
Date: Sun, 23 Feb 2025 15:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740323333
