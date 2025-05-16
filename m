Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594E672631
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747367395; cv=none; b=Fcz5hwtN9pcBpX5Y/V+H101uVT6UV+Ra3Jf52kEIp3C5o549G/nW8X9Qnh5hHh2iG4xnGGM2ur8xyDYD5+yyTs3PtXCBHfhr7TSywQ07YcH3bkStqJOL5FbV2lzmSkm1R04RrrZ/q3QDlCGkpNaVC/bWxl+ozSrG+CqpFOpcPJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747367395; c=relaxed/simple;
	bh=lL4QNx0z3OHYP4jHtRPxzyKSj4NMru7OHqghVzH8/oQ=;
	h=To:Subject:From:Message-Id:Date; b=OnQeDWorTm/iyKbWtK5QgvplKn54i0DXbTGT5c74C0FtnNhg2/YPS0qvYM7TQs/P04y9Gk7XqOh6HxnERgzA/xPMSQ/b0IRhsQyrVorPVPb+jv9bsUZHFqz6StlQmJHXDPvoQtqAZMXcHPINuLqTKh1vwUudogAoMhVEzFbGMX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6JQLd7k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6JQLd7k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C0BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747367393;
	bh=lL4QNx0z3OHYP4jHtRPxzyKSj4NMru7OHqghVzH8/oQ=;
	h=To:Subject:From:Date:From;
	b=D6JQLd7kK2oaGIaPTjictUXB05ABwVki1027Jdlby1XlossRjOQOnoRBCUjEuEtQu
	 CPznkUWFYQz/ztEWmnOjgzlNEGXBemjJUzCdPNaGo6rVk3ndIR7aw4dRX0P/CO5VaY
	 mxmb4RYLtVRTBKT5JQUYV6PWv5uBULvFTWg1LFTR1TahOVGGB3IMnphbG7h9WsfoUo
	 4ofhQRTE/d2sm8WrFVPgiJVKIMoSKbmbnIJ6ZdgFsQ/KOqEovT+IV3FJAPNs8PwJ7+
	 VszNhffcEoKdvC4HmKN4fvWZN3UWZbap35umxsNoePcWOyeH5V57vGj3WtRkerlT99
	 Aef29BUEkSg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95102C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736739358.7675.12123395995422045393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47117c73b80e853ddd7cd0e75758c4a6b548af98ba7ad0ca9b37e2030e326b31
Date: Fri, 16 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747367393
