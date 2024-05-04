Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A08A29
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714780943; cv=none; b=Mgn/yacDbdKWlmK7bgxYJRnQUmeNy4Ykp8FE0dgOVVzXp6CK3KN0FGmjiyp/Toi6B+eHFBd8Se5a6oqmoziyxrk3cSZsYtkY5Q53LsqA6GwQrJDPUkxem1gnQWZsAX+2cA5OeluX7zWyp3JBNlLm0o/wBljUuUU57Rdk9eWx+yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714780943; c=relaxed/simple;
	bh=QjUcEfwOW1gwS9ahh5bUMB/gwbF5V41cOe+301hWM7E=;
	h=To:Subject:From:Message-Id:Date; b=ZMyTiuKJ4zHI4zRDPymOtczL8oCJKPs9ACkpVycFWYr8Lgy2/d4i67rI8ZlIemwRGaa7mCKfCSmoy3cj15u86fo7Yob+6erXzSEMaZSnb+lVgU8YVA7IX4cAoG7FQgivSurWsckv6vTiniA63BruHVvWEMEUd6kbYIPgVqZYIgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM8yHNrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM8yHNrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE822C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714780942;
	bh=QjUcEfwOW1gwS9ahh5bUMB/gwbF5V41cOe+301hWM7E=;
	h=To:Subject:From:Date:From;
	b=BM8yHNrbxFG579/GP7jdEHw7OLRx5tOABiFIyhIs5UvpAXT4Mbjkpo1R4nisJzd7X
	 lOkEZC3KZ1uJCUQmu+ClN/b6e33ThLaZw5YNAUcRe9k5EOOgo1E3W1TEBAxQjLsCbM
	 5ZdoiZiLRS8z2ZFhUBv58LFFJ3LOYTEaDDqbBrE1pTbQjX/HCFMPnThaiy8Ec+owHO
	 6xJD7P4ZJzsHkAL0xlbamHy0AsdYLMFbG65WDbR/U5mzQ6OnohCHjnRNYpbDnUzX0X
	 SMg165aiONyoGuBJ7vAGxM1dFzgmA8egtfb8tt3l6FZ3xc+v9OQ6U7y9WhWVDXDSw+
	 nOAHv99S8kx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8127C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478094278.25158.8148351354861482711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a377066185143ff4e9623851e711f986825f4de5140d69e484d90c040af65a7b
Date: Sat, 04 May 2024 00:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714780942
