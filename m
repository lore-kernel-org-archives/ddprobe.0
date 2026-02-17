Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF48A2D781B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771361694; cv=none; b=M/s2AJ/qYeN/DYbzU1+Q6oGFTBY9Hhj8alvKyrUo39nNWtZWYyXPXIZlrBosfi4TW4+EYMsTXaIbX/LVhwPMWuAsBwXLxvrK3jleALgoDB11KmPKsFLhOaovZIdcvVLiup9nI3OTfkuyul+69wUfOxA43IPU1csozxx2uokdqyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771361694; c=relaxed/simple;
	bh=Msy1bU/7JRYN9BlnNpCeA5BGpyobOzGo+dqZJgoFgE8=;
	h=To:Subject:From:Message-Id:Date; b=GscqghepkOIl9/fZAsGpLIAsKQZQEo5jRXJuVC9qNgMSLncF/Bf0kPq/BLAkfw06cV/JKbdkUrCZ1958Uzhl8yAS/Uq2QAdpEl5o73/br4e2tqi0H2Jj07Lm146WhalSP/iOMTkPOEdICio7da3CirqiFkiwy8HmhmA2jHhgsY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpDn5B7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpDn5B7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF88FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771361693;
	bh=Msy1bU/7JRYN9BlnNpCeA5BGpyobOzGo+dqZJgoFgE8=;
	h=To:Subject:From:Date:From;
	b=BpDn5B7C41abPpaHy/GkWplLnttncfW0Rgu9e/aDhnEw+Jt8lE9/rdxm+u9Bz/nuE
	 pO1shoygq3DmBl04+4mB2tdSwwXaZ/+fNcOmxIbMxSyia6z9ghKaiGqFyYB2Da46gH
	 TAU4BaDTr3OmrxzBWZ4Xyu9Zto5dBKxpiPEN4H/4u6pF7JTk5XnL0Uhflm9Mgc28MY
	 8/Ux8ZhXK4xxePFlTB7ip5Zu4SnfqwllNLO1RjPYiNLRx8K3xtHyMSLIxh1UACNVBH
	 EFqZaOK44Zp2IMiHeeBiL/7LO2uSKKKc3cSrTzH9VXICY2g/e6H/7xmkstPjoEEIoO
	 M37wnD2zeLKag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B4BE9A04A
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136169365.24833.10463579455591190271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc310c80f8c765a0d5780ee0bd92832e2660c2a69fe9bfce56fcde1ef63be7a
Date: Tue, 17 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771361693
