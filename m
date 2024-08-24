Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1164C69
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724475954; cv=none; b=eb7yXV+SfCzhRIYZCwSI6ZK+YBYC0tgztHmuA0bkS/8NRy4WGVc/LZABoiIJH2J1NcSOeC41FZ23ud1uB4546LT9oBvu4XMUfzPlAIAnC4a08Dy0aTnFU+nRqKUvyGpO5C66KsanjvEokFNZcY1lpVzj8bVEXR1af52fQdMX2NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724475954; c=relaxed/simple;
	bh=Ij+AOdLgwmtOYs1EsAXcqZCFcsjl3ens7BI8vw45+eo=;
	h=To:Subject:From:Message-Id:Date; b=Yb0yXCYmlDMQd3Kq1T14EFpLk6OxHRUpmwRJyJUViFKzx+dmiQdfChBoHP8WXvnfZ1F1MuinDrV8MaQb2bRIHGUxm5hjexfOZA5U1+cyDGPOOmaPHv+DkSE88SPaXllV49RD/6vkIVKl73SJnHkL8Lj+Jntpa8qXw+RIlOI75gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9/MaFf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9/MaFf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB197C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724475953;
	bh=Ij+AOdLgwmtOYs1EsAXcqZCFcsjl3ens7BI8vw45+eo=;
	h=To:Subject:From:Date:From;
	b=N9/MaFf4MLfbJ0h7k2IrwkudvYbR5bInuGSp45c8PcN8bBDD0so62kaoUivXZ4+lZ
	 GcBFV3FfX4t+tlGhxQrV81WaRO92Otpl889a+6XC9vkOy+DZRqXwB1F+xt3x90Iu44
	 wB35EjOYbI9jM/QgMViZbtFKBKgUbrybpWbabPjcJKGJOzvx8ETc9PfVOEe6ATbla+
	 NLuUNeh8CYA6KQ6mAO6wTaNF1nm3ATYaQbSVSzxa6hkq53TELG5DxR06RbZ0ohRvx1
	 8Xf121nFk0x39pGCBZ8ixDMxDHkcLu/eXylq2hVwJBQQLc8x8wD9yXLwz+V1Fw8yb0
	 gvCbD6cUgkaBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9925CC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447595359.17954.3020568004841466326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d984bcf636686ab97096ba08bc6b024d93bd76b95b59ae5c28d0861a495b64
Date: Sat, 24 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724475953
