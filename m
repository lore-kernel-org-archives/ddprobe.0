Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A54B1E51EE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599234; cv=none; b=u4MWMAhlu5afviOSi68FxAx6uC1KvSFdOeSs70NgsrZUU9ayaYT93Jz9cm1FYSnQJfDRbbJr7i9A83U1Vw0d9DleG2DURFIrrD9o8m3UhHXt+1poEHAD3nqHPveUzdIWvabyQdQNqmqz1H5SM2JbFggrT1i0fxAXZra1ZRKme3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599234; c=relaxed/simple;
	bh=AcR3ZNW6ucRgs0hNP4A70MQXsP2hYPXGB1vk7BBAT5w=;
	h=To:Subject:From:Message-Id:Date; b=S5wUuKTBzlj4YCMBKlW/BYo5hk8rqJoAGZDuiv77E+nBf0oZHqW1Rez7/wKpEhUFfuPmeKDYLI1v55VUGAZXFB5Vz6wFxiIP+/pZQYv7Bq+rKVdOth+VaZB831nv9LVwCD6MjyoYE22Imz7vwtRvY9mI+eyzYfe85aVjcfqdMg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7dX1dJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7dX1dJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D852C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768599233;
	bh=AcR3ZNW6ucRgs0hNP4A70MQXsP2hYPXGB1vk7BBAT5w=;
	h=To:Subject:From:Date:From;
	b=B7dX1dJjRa0H89nr2Z/3am6jrvkc+pz2GLrceHiAEJ56GAQTyZZ9h3ddDAkmmq3CA
	 dNcBiI9lPsrdrq0h8+tAyHheLfjD2BlvPC559YVu9CEP1Saipcac7v5A12myBBRRA3
	 hLod/SCLh4tmB4/B5EvtX+i9lD+DQfPPbZnJIBw03IowxiLdwogp0rcKuxgVDKVWvP
	 zYgt/Y0gvsmuak9DLVv7p9ofR2o4gnqaviWPm2Yog2OXW8oVYHTuiQR54F5LXCGp4D
	 POAQgq3TJCCtIQQw0I2/4XPEw+m5bKmvaZsKMIFh6UpF8mVZJxJF/wWBP8Qo/AK26z
	 rAOFFCMHow4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F97CC982C3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176859923358.9934.16395408654470181529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cdb627cc279a112a73c87efe162ba91f431bc6fabb058b1a82c9131c7aa772
Date: Fri, 16 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768599233
