Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72FE3A1DB
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776624454; cv=none; b=WOuFSKbFhW10IFJi/ajg3Z8obX1B1ZjHVFeLoJpO4KhPeMbRWwYKr8GzcZHfa/DMLh7AU+nJm5VYUMScQmLvcwqLAEGPnHNfQI2X2IbFofFswrfcBB9O6O/b1S6wMWe43H/81biX/quV1Dd1LSV1vlPbVeUDfFlfJ7KZYTi/2dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776624454; c=relaxed/simple;
	bh=XuAkH1wuOLFfcxi/N2EccHtPOjVWdKtYHY2tFVmZc/E=;
	h=To:Subject:From:Message-Id:Date; b=jrKwG0C8tTtzjJpyfoOhZW2x3LuacfcJ4ecA0LwlwDhjFqmY9ecO0jvvxHVE0XmedRTS1iPdySkba91xFGS0Z0C8chZ7B9nMa1R5xMpONo8TmQyELyPZgl9gAAkOkrDaH/Ec5YR6AMh/VgQycBNZ3NpPdEf2PTVLJpSe+23QKDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF+VSHe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF+VSHe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07EEC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776624453;
	bh=XuAkH1wuOLFfcxi/N2EccHtPOjVWdKtYHY2tFVmZc/E=;
	h=To:Subject:From:Date:From;
	b=cF+VSHe2mS5TdfDAxGGShYDPsLAnc4Z0dS9vq5WIITyPINU1yEEepUNdNjqGBMk7z
	 wsC9gc3GMJrwFFoKz6jsE216OKuK2X+P4ESgxE/qs1vMQr6YZM6POzpKIQ4UPjz685
	 QXPiCZS99VuEsDaBYugicHADnqeshDNbptp8qDQrx+Fy+8c3R3HsgdT0vjTg2T85fs
	 caJujnmbgZpgC3q5xqsOfX2dxEUMAG8mbMDVog77nd1pqf+3Ezgw7VtUg+c0a4qZzW
	 GXhKvCCXf0+47GbSZnq2+fecSy1gzpAOjfWP1NWOPPdn9aE581+BCkOBXjIYvn1Lwy
	 v9TLk+FnxpEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BFEA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177662445369.25468.7731109396127988963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac85654fbb6100f951ddcbd234ddf1b53dd326607de0f6d8ef2188d03338a86
Date: Sun, 19 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776624453
