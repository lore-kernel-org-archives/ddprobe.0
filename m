Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FA98F6F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749965994; cv=none; b=SWBxuwQgc1eHaWtATn2kV16Ic5EPiWvXsDIwX8t/LH+VXw/FUakEuv9+KEcZWoWMlK1YlpCLCvsQvakRYfKvM+cc5/pQbhzP/D9FgCgmvhwqgCr5LPUnz8Kx+yjgr2Df6dy9+lH05mntb02a9mc8mM/h2qpqMHphcIQS6jRdrp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749965994; c=relaxed/simple;
	bh=BbeJYYK9gZzyeZZIcnvrDIKuXAUYEMG6/g+Uj6KU12g=;
	h=To:Subject:From:Message-Id:Date; b=qu/cNRszFoOWYYjbAFGlA6JSTHTcQ+hNt2GVY80GgvjMsZaBNE3BaU7u8BvZN4i+W7rnHx128JvO1fB7LcrQRNTaBvgRffmvt9CTgCQ3G0hMZ4b9+0Z9qjYTvX2Lr5EKdxKZKXXSgN8sWwjCjrF7tqXVANMKijdiaansFjwTKSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUbHpnws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUbHpnws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18E3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749965993;
	bh=BbeJYYK9gZzyeZZIcnvrDIKuXAUYEMG6/g+Uj6KU12g=;
	h=To:Subject:From:Date:From;
	b=iUbHpnwsMBT3u3Qkg/GLX4c+6GixOCtlx9zKVo6BHND+1rJK6xx5DohNKTe3LH6si
	 odtphrey5J+crBCuemMMVXmgXomO2WclVI1uwYAHKDbKhU/t+Onqr9ICgJvJcYIY9s
	 pFiqiQlcNsge9YZdvg1P8pZEnPvwsbc7AfdfItnWjOb5PwJgjD/mTqt/pDqUQ//2je
	 HSlPpmRAVJWh5ksAwDtA1tbD4CBcS/rcR0hKSE2pCCnph+wn4Zi4y0YppPeZWF7v5X
	 TM+zFCkRjE7MwqEWsl6vbi08dqfWHPZH2WvO31LCkSjfBahev4mEbWH+0AOTqpMLRB
	 8bejG6xTkrixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE94C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996599358.21016.13966057839059545604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84ffc4069716080047e5fb35d002b23caf176e06855261820f3fd8b51a917e65
Date: Sun, 15 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749965993
