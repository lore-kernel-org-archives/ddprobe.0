Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F4D20ADD8
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 12:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739361775; cv=none; b=E9dw8RJvYSsNtlrsQifCwGqXGl0vtdTbefS4XjCgyMWMAEbd0Gv1mtA5Jddm2Typ/oWXCjrqFVIimFPk8l4ubmDByeA2Ae6LufPrUm5rNSPg20v3h+KkWdAB00nXxZcWHacs5OPw7F9CaJmJlAOb4VODkuajTA3EXGmpk0xt52Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739361775; c=relaxed/simple;
	bh=8UFxwPyrqltX4VF40MTth2NJOLeTK4p8Ha1zEzbqGVc=;
	h=To:Subject:From:Message-Id:Date; b=QNqcrA4HC1r2BzDWVZz9sA8ffprZPF4iQI6GUtGhilqZKX0JgoQVBHO2q13iSRZBdu6yenHonP7Ryq/OvphhLgftTjEPM4Zab1tG6c+B3+9iOY9t2HofSr3G/xwTv8bi3zR0yefyrSaQ0mScMWTgF6ihUk+VvYJDmZY6ctqHI+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=haTXxbM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="haTXxbM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 588F4C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 12:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739361775;
	bh=8UFxwPyrqltX4VF40MTth2NJOLeTK4p8Ha1zEzbqGVc=;
	h=To:Subject:From:Date:From;
	b=haTXxbM99kNowMn262XZhSFjB3BzHrj4bHlW0C4qJoDC6xIOLjk8ZXFCk+5LzKCzG
	 8XuYaThzQjB/ywXYuqgnPMJ0JPFXLq93wZ64DtrXFEkkvmTxLvki2Z1XuFUnCD9wQI
	 jljfyZX726+4Uh6lzjU6MJVyFN/SpRPo+tfxq9QBpF+FUaBjCgB0tVT5ys8aeVd77B
	 4xl8zYbZ/xGih4jGxcVQNXKF2G3G3QdddaWJ8IS1Tw0ViUIUuNR1TLrtnCDqibxpgy
	 D8IfwT6x3qAiakE7gBRT94WQ7lIHxv29MIv4j3zVV6QmCt+L+00uslxWteiwe7v6GC
	 oo+wvVeTPLMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A986FC021A1
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 12:02:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173936177461.6390.17117298835595927210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2330287873337095a50e9dfe9a29777e60bc1bef22c9162720b3097bc35d9d86
Date: Wed, 12 Feb 2025 12:02:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739361774
