Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A453208
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754532594; cv=none; b=af3rtdTf/sH6oFIO0gwoB5j7M/uI5HTbZN87EL9VZGSj6XCcC7UljWjOiKZLWfp4TJ1P+DZkSR54AT2T9FW41vgVZj/nL9PqwhSKb58LSUJoRFt+SuNd3y6DCfdx/TI20Z5Dz4pdQ+ZPzU5OJMmci/RvPTeaEGnxHzNuKgAJXDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754532594; c=relaxed/simple;
	bh=uSgG0+Cdqnwu4l171vP+Pw09VkmIyZEuWAc0cZhPn9w=;
	h=To:Subject:From:Message-Id:Date; b=EPjWGJpFvTzDyiuAFCtHnADjMQmi7hb8xZSbcyC/4aZKRjpnsNvWILYHvrBSQOK5/KjceO/Bl6c5JrzfdbiVMa39IJgUMwSLVso82yeH38aGMFyJ+byb6ChZGWtU083Z5ykGZXGWTjHqe0DrJepzSejuv0h0VkRUswukAbSEwas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEKbYEkr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEKbYEkr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1600C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754532593;
	bh=uSgG0+Cdqnwu4l171vP+Pw09VkmIyZEuWAc0cZhPn9w=;
	h=To:Subject:From:Date:From;
	b=gEKbYEkr6uqRQU8F/V3nDoV89oVVzeuOMUGfbXYtYywzm/6zNllqGuEHhjlK4BaYz
	 CgHMaD1/40dJHtKHcjHKTsPPObA5IgHp1eZm/jTX5//2aQWqfWJA+kB9i9XFCrHqhB
	 ATRrJnWWLOSX22htrRdaGBvlBaz1ehNj8+8WGc8JejfxzvDFu2wv/hR9lQQIocIzna
	 fGYjIEJV3irx26IV69vFapQsRQfFWoVTXB+kbTBIF1RS5CEyeDoWx/qsfkPdDFpbFx
	 6hM7tMp/c2R+s/ocMN2OzqILr2jsTFVqoBObKkRjBgAYa7ZP7+iJXp8gDVlVMl5z1O
	 IIK4LyrU+dYmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F99C87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453259358.16516.6729280667980972092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfa089acd32e2139b1d26d7c461b388c8b923b7a25fd671bd3d804a137ae415
Date: Thu, 07 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754532593
