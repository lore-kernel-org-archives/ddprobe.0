Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBCC205E3E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748536194; cv=none; b=AwQ8ZpDkdgbvzWuQj7XS9VBT9YTT/OzaFKaSRiYDTZy7kmooJEtXpFg7Oj+I/ByjkFWNKmHubCs8LxnCu7JQx4bI26xGOuEPIQU9+zWxP2QW3TUewu3WvpV5t5tUhntPNL0OzKnP7u59aF5xwEvXsjV47h3WVwIoILEUJpjwqW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748536194; c=relaxed/simple;
	bh=QWBXAaKiyl9oV57r96D/qxy9Gu3d5RZLQA4qYcQdv8M=;
	h=To:Subject:From:Message-Id:Date; b=cv8rTQ9OFGOhpJfOtqOpXJ6PqiDir+taB83vL8BK5QMBiG0/OOnP51boBcZg8A+t1dYJAxGmt73A5bsqrHG5ZJt9C5lFYNfVQqH4shS8jVlhW93ZSkKWV7subNFOB0h+OPtLUxnZsv6xbqKf/lCuLf7sdD/a936S5YRLqRy/hFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJPCtWHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJPCtWHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A9AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748536193;
	bh=QWBXAaKiyl9oV57r96D/qxy9Gu3d5RZLQA4qYcQdv8M=;
	h=To:Subject:From:Date:From;
	b=FJPCtWHznNZufVGOiSgGFDFrxh2a165Up4w+Bd6UnZZ3hi5VFW6tNqyQ1YNl3vqy1
	 SOFjFlMToV9Fze6+LMqPbmcfXRKUW1zq+TZaLCwCMh5Dc21VbnrQNrYFwHVgGMyld0
	 +H/0HI2ej2owLA67VlQ8oYnd/AJNDkxNh+RvQWRGM33oyFXDa2/H6Hyug2rhRtz826
	 JIJvIBCiA7l0WMspqJtBWDctJIztHmVAyz7V+jTd//Cy8DRUN6c54RtEKTmihmkNnt
	 zm5dVFIV+8CZPkLdubN9oKwyGbGOAzCB1pS+lFS9M96zCUn22q/WD6h0zZ4+Od8zqD
	 H+la6RUV58hdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E981C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853619357.32300.9389761568163976737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e70e6fc05c324dd98a27e74251acf6b9b8fdc8c71cb66a54d141bb47666647
Date: Thu, 29 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748536193
