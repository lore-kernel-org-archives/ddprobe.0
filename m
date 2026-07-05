Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7B8373BFE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783295914; cv=none; b=pxjVE3uyme3croFAsU2XZYen30QBwcf2cTAQYmEmojomFeqsO8wbTSx7UrYwVsi9B5yc+oOP8Yi3ifbKhb/1biT3ZTWQwMcXxQqdZeUAd4rkTYGY4YDI9hVlu7jUz6XmS4hfxcpH0BADIV9Rhk5Bg2rooHUCyFAbZzoeWzwlun4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783295914; c=relaxed/simple;
	bh=vloiXj8ucXvoHQJg7Gbduhq9Ho6nhsiT4C+OObcz4oY=;
	h=To:Subject:From:Message-Id:Date; b=u8CMxEPozkDknrlQ0l8PbU2uNhSJ9gicW94FmOa3KcGDjjJk3dYx8Tq/tJw9DUAlCFIc3hj2/K+WiDix7HMLmgVbpCBjK+fNZbwaiOdBL6waUUIiYc69Kb0KD0AwOpImPemv57NcXuqJE+othpz3TfIQDbb33uZKymvv2wz3XEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSj9HqQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSj9HqQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEE5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783295913;
	bh=vloiXj8ucXvoHQJg7Gbduhq9Ho6nhsiT4C+OObcz4oY=;
	h=To:Subject:From:Date:From;
	b=cSj9HqQIWXA/BQyGGSCi0ymD0INvZVrqL8/taY1WEniE1JMdYM/W9ZjPG/14phDRA
	 JewfyHZKbIWA1jnUqa3wRWqnQVIW04+yTwlPEH5ayrXEUFhmDA3yIGczVpnLYv7Zhp
	 qi/TjkiWb0Ut0rgX5NzzsvN0fu/m/Xo7suh1zQtElXD70nC0r+8Gf/B8yRG8GYlkwu
	 xaaPOK3/+6JZbsmAJshRjPLM+nWqcrwfk/ZtH33g7sdIyGd9znV7cIpxV6bfCuOphC
	 WadL6kKwPy/ZoDVr4sZ7J+TxZlBf4jWPGEUm8h73bqOjeEJqIxahpIsJWLOR8tmGMS
	 D2oFP9E72KkrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77EC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329591368.3265.6495659988297306420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a1872808d29229439830e375d35c69e0153a24637ad3b66eb43261b269b61a
Date: Sun, 05 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783295913
