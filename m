Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376F4126BFA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743136794; cv=none; b=HWzdyiOQo/cxCKbdK+ejt/nIhFfFtAZGAFPyv+ZJ/xX74U2DwAKSpHkvIvSd0kRxyHxIfLUAExKjlkk20eLcbL+9A9ymLp65MCxNnWNvh1Bk+koiBrb/5kxH7+bDhoxEjOk79Ccj1PIddphJBiwSJDgmYfEUW1ZP3rS5iLJpcQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743136794; c=relaxed/simple;
	bh=7cgtoS9IYlDpf2oe/4vMllFyxPqQztdKxgSJ85GrD7c=;
	h=To:Subject:From:Message-Id:Date; b=EzAZ3Jb1dhsLGhYCFxgJNhW1hVcjZ508nO2vf1y0cAPxJS95VeiFWzEi5WO2GYX74W0J5tjocFJzrkb7lEE2fOj7p08pq0hfqU+dpaYkBdshiJ/UKrUU3PifyW+HpDvkSEwx8JRhHrnqrm+TFbFYp9fTS9RJHtmr24z/wBUmEhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXk3gLA1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXk3gLA1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CD3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743136793;
	bh=7cgtoS9IYlDpf2oe/4vMllFyxPqQztdKxgSJ85GrD7c=;
	h=To:Subject:From:Date:From;
	b=LXk3gLA1Ei1UdtETqz9FQigwIquRWCWVOG5+Qb0IOVqOG4LFltogLKA5SzvntfupL
	 tohF4XUrvSDoMR4er78VA/QnuH7pp3B4i9S+SM3/asDsKVK+tk9P5hJHENaQMjq40D
	 Hap6PMnD/fQCM6Em4Wf26WpRe+7uiwfQYOQzFB26MmgGa9KGBQrhKCgm4DOeDv7GYw
	 y9p+U8TLcXbGxPpniBaxnXisaMkqUadImk5zPb9ydypX1Seco0qb1VEvUZnQkqPR6z
	 6ukrj5srBBGb+OFFhi658v6zT7FqoeFxPjcZ2hxQzkB9spt02W5ulk7QDmQUIWwXT3
	 zyv7T3kNfC/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D95CC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174313679363.26742.11358307448286215683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8180e8a10cbab36ba8dc9f6ff6aae6ae31612be81d24d4bc6283f8a2f0370e6a
Date: Fri, 28 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743136793
