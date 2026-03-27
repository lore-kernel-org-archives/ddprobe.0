Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B31D37FF60
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774640694; cv=none; b=a1TGH13zO4jA3Yf9wQd58M43I5iL+1xlJ3w0CwGxswF5BkQT/Tafy39s3wSDbTISn7a+F2Fd4HFXiJpfmJDgNK4+lvn//ALbd+t8GTDZRfuEFwyOlcMWYtjeqjW1jn3lGED0O1qd+0JRJzGf+oeHf9k6B6tp9MvIotMnaiK1GIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774640694; c=relaxed/simple;
	bh=b5yOGTrlG76psldg+1RCIBlQOfmspUpWAXee8TK1YE4=;
	h=To:Subject:From:Message-Id:Date; b=OFHUmktwEVC+IXqDTj6SdFf/lw+UuQ3Rn9LVVkj319yA6RKhys2XRF5fiMJorZlOk1Zpc7dW2NomhoCl9WB8S6v97zR7hkcRYvAD/EnJqaUHtUdyt1Co75w8Gtlnhy2RxLUAdhrpxrW9aacu2p/2SPIwcG7kV0CE9QqQP084mG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7Jcw7O3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7Jcw7O3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29D1C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774640693;
	bh=b5yOGTrlG76psldg+1RCIBlQOfmspUpWAXee8TK1YE4=;
	h=To:Subject:From:Date:From;
	b=E7Jcw7O3rhlCSa5zTbdtzQsdPVuFAvAVYAULRH5CDNlq4pVz+bkoKFKoN4CNRMq3K
	 NCAt/lZdxVzE/CP0C4a1ACb9/K62qh5cm8a6krcZGlmxhqWx4fTacSZgZ9YwL7G9ap
	 2pHyNdkpefdFJwcaOVZYaPtOjIAUa6vo2K7PGXgGmYFfc/i2goBA0rilOOhEl3CSdl
	 nk+gx1K4R1QktANuKQFTDFjrDmZ0FRq/FVbD3bVDDj4EGg7P41tIu9thbcc4Q4+1RU
	 ZHIV/wWtZxEBnhbl/rsr7YlfZ8/DTUToY1xAAiDBmNfqnyogJ+FS3PcHY34UxRNC9s
	 e/swZgY3h61lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A70C10F2869
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464069361.25460.5861249317155936091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c256e1c7ba54b35dbe308c5cc3f08b17e5e9b7c92826544cf21b5e041594a0e1
Date: Fri, 27 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774640693
