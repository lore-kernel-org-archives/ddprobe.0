Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1832A1AA
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747402794; cv=none; b=pu+N6IFve95R2X60CPRYI0h4Hxq3yjCaDz9KW9EY4JDc0AcTPoQ13Tnu6NkO/KxXGI3x/BrQq/c6jbJ5BZmcj/lseADDOPXERCm/Eki9w5HwTyLaws+OX/z78Ldv3rZ8WBZdJQ/XKw47EjN1UtoroWXrxX8/7WJjJ+llS3MmdIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747402794; c=relaxed/simple;
	bh=KsVKL8PBfYHZ+qWhP8Wr8klAqr1ohiXFZWVETSCHB0E=;
	h=To:Subject:From:Message-Id:Date; b=pVV+5M+iikTC/CX5iRYQ6ms3PDWwIfl07At2PQYuT9NQ2IhuxUblHejLHx5lPUSdgwmKx0EIvtbYyE3Is1a0q48CCJ2S6HV+ecWmpvO+AGzQNJDQx0WssovRepOrWamtcRXXvIVuR9j6Aw1sZB/RI8UcoVUoM7IuAdc+IP5tw+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsY8Ug7O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsY8Ug7O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A739BC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747402793;
	bh=KsVKL8PBfYHZ+qWhP8Wr8klAqr1ohiXFZWVETSCHB0E=;
	h=To:Subject:From:Date:From;
	b=dsY8Ug7ONCSgt/3RlrjoFVuu70w8gbw4vVg3U2oPEQvgUjJ0w6DWrO81UefVgtUOc
	 2F2dreOJyA6oaXPvNRj0pPxQw7fSGYmUa1flkbWJQ8BdvkqQFiLh/3JTXjHLtiQiXT
	 rG/PntkcKrAAb4G/YrJ2tRx4J+urgMVeR07fcvTTEPRhfnFnIeq2SaTaO58xbT9SIs
	 jG3wL4xeU1Qs7urLKHL2qmCVp7FruEvq1S2HN00zagmTtJUP11hslVqs06GGQr3Emy
	 tEg8c6plRGHvTpQTfXB2qffy+p+Z01mT1VV78uncD4mTuleQ4Oxr/vuTPmnNsSTly0
	 6UnNrTSIoGnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E8BC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740279359.3823.9762492873631704147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63e9f99b79823bfbca13f4285c2969d91d60d20855413e199720cd0a689ef46
Date: Fri, 16 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747402793
