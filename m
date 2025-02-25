Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A18136352
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 02:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740450534; cv=none; b=omDUwg/lSFqah0tZvTz5tIJ+FXC1pZzuTwFdLEFVqEVEy53FDO5OGTB7v+pxfSu/Evd0Y/m8QqU3dk3xpdos7/zLZwmC0BYzRRQbSbdKpFVo1z9AHejQGjmNxHpFZoAX/lCTZpYb6Opn0phx4flJgH3jeaz+eGCn/bLqaam8zFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740450534; c=relaxed/simple;
	bh=guI0u2U0C0bYMYpYS05SDgJ41WJfOeIkt6mlBwYocYk=;
	h=To:Subject:From:Message-Id:Date; b=be4/Ie43Vut5ddqxJNJ4vOuUnpcOoav6Pigas55T6jxPMMg13UblsqGUIE4olwsPR8I5zQ0h9B0STEFSbMl/eADef99E0fUo3lXqsjyQXnhHbY2WRjdMdIwtrLwtQAyaS4A0ZOGt3t696hMlwymz42k2ALbjO8RqS3ZfhJrJH5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfsuPNs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfsuPNs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8EDC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 02:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740450533;
	bh=guI0u2U0C0bYMYpYS05SDgJ41WJfOeIkt6mlBwYocYk=;
	h=To:Subject:From:Date:From;
	b=PfsuPNs+w2iyQKyYFePJBhtBMs+cjApRmKqqKsO0tfN5PfcBcnQt88guGyVaBUZ9/
	 I3vzNP/FVCb6hVxIcGZhDLhPo9jR1UP5nNmM7kYQS1fxXF1lto2OVymxQm97/qWiUY
	 m8HuSHuLSyBxNgxIO0vb/nXmpzLMk+VtTzCy2heFX+bKxLxFxSInjMEOjcVEOdmHh4
	 bvWtwvTgUMAplXs7t9IbtFWoIGJOON0GD84+R/IRQ9E/vgxTtZLacrXNCsNVcx6A3/
	 eow8W0XBCP+be0Mw4DN2gFd1ODBo2wUkUtplijMgcjezYTnN/yzrX6jyhTpXpsJOxV
	 aSu/RSRHCR6uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE68C021A4
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 02:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174045053363.17763.9861091545530547570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c07985066cc1372f7894dc8d2fe1a538d4edc5758341ead25ec2553b96966bcf
Date: Tue, 25 Feb 2025 02:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740450533
