Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2D91FFC4D
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740072534; cv=none; b=Iaariw1fAP3+pNv+jpvJbF/sFWUfnHSrQL103/GlS6FZt0SQ/cGg7nSEfdTQ+FkLyc3OMHyxDYxtt8ryzMXfVxslsvfusHFjSUXhMUfafcJYoP/AFyci3S0l/6Cay+kPuD44D2lgVuR+GEUk9YgILrNb0JWB/77ADY/rkplZd18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740072534; c=relaxed/simple;
	bh=RB9XPCKC+nwh7s5PS4KlSmkp+d4QsJ3NU77mvr74Rz0=;
	h=To:Subject:From:Message-Id:Date; b=e68s9b63iYhGErZNQhhzp0PoMzd0sHWpzT41mA3K5jLGXlM7JQzDnHvtxbKv9liQed8oql0DsKVPQGVr53XAyOO60SvCaSkwDP/f5BLAQhvstuy/PCIZ3eIMPEI46kyRxNFU3hZc/yWUp3i/DQN+dU+BmLyz6pI2LhW4CW6QZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhpKbPhp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhpKbPhp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C395EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740072533;
	bh=RB9XPCKC+nwh7s5PS4KlSmkp+d4QsJ3NU77mvr74Rz0=;
	h=To:Subject:From:Date:From;
	b=YhpKbPhpXEhv9TnEBLYX6CNw8T19+n35B2DbQ/L5fnBx+drkvD4EVmlvW/3al1Zvd
	 ffvLeFLKH5HiiN2FvEQWmgJ7G/QAVfZcFjUbIxlzuVtmFXV7I82Kq7Kh1zFZKuf+ds
	 G1pebZ3BxJ+zFyT4A4NPm/7J7BDNOKE7zgzwAo2YHDSWOlYx27jNKlgnKDtWWBc3fT
	 /OAwFhPCxxbHcpDuxEEDQVoPVLNjFT7vkMMaickfsgf/FZCa0MmrTLzMA0IrRpa14o
	 yoM+EdeEXP0Eqx6W53OUmRWyRLD4pb5j10Q7AYwwWiR524SKWE36XG0Z8f3EdJkpML
	 fbbrNCjKCHmwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E61C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007253367.26819.3672876515150929160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af095d2307aa7d0b2442854d7960455feefb79c7ad0825a526fa2192fcba2022
Date: Thu, 20 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740072533
