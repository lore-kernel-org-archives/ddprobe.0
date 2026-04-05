Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4749D4A02
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775396734; cv=none; b=LXM1ETDxTVEX+hLolT/nwZLa3qPYenkItRwO4TE8JZ1N1BuLF2v/j+gXoBQikkWij8de9L9eFXRvWNjmTf+mObFqO8Mthxbk5LTdO8fubxnjw/+0rO0PbfKD5F23Fmsi31Q+eX98QxZoEsr+/UjavM4z290Tp4uZiIkTKNk+JKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775396734; c=relaxed/simple;
	bh=1idB/xw2KoInMxSS4dXADQ5i8eJakZZ5d6DqRgC9L1o=;
	h=To:Subject:From:Message-Id:Date; b=YYEiwSH64pmnk2O9pN8a/qBt7LVZCgnNAfZ9BuF1ZwJrfESPUuGxz1CDIRRNEfifQop0WMb0NGam7Hfu99ZwD8jFfagJQBCo9bZfRNuM/PrpqK68S95Ur9FLyLfrsAXf/zvnvAJmqW1VtcMFJ6dT1Ubz9ttuJ0gUtXegwLOpgvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N06/mk/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N06/mk/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9852C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775396733;
	bh=1idB/xw2KoInMxSS4dXADQ5i8eJakZZ5d6DqRgC9L1o=;
	h=To:Subject:From:Date:From;
	b=N06/mk/Y1LLaEW9OXDpMzl8G02SyXO5gAKxN1qKwLK6SHMpvs7sX0kcJYqUv5HVRX
	 F8zhEWSSnGZ4iGKiTD8xMLpuR0UAwtBxnJRiiDCGnGvN2lfZmqDG2yZ62C/qvw9g7v
	 divF4reBtlx1Q+r66ErrB3TarIPOqjUNgBbugz54aOix55s3UlVAgGld80FO3j2eAh
	 wo45FGlYPGV4nRpAkGRSkYFz1OEYdxV6lUmrkHZrbbFSTkJUf8wWstpTn746z/cOlY
	 4puq6NaofBgOkZcaY6riyShs9WYVWj4fxmXXMpPLBNpyfM+qBt1N1g8UIhLVvU8WMI
	 4yHfmZ3StmJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B679EF3D5E2
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 13:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539673369.23751.11445644068000803162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38fa6e040e0df15f4d0ef0df449656a210037ee56364d30c600f5e9ed77a507
Date: Sun, 05 Apr 2026 13:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775396733
