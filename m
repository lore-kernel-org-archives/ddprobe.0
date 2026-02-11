Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A3033FE1F
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770843294; cv=none; b=Bn41EZ8xGCL5vZ5eFvTmYR1/hnkuI2HTjAXCzm+6OhXgmKGoGUUD9VH+R0kVpzi25OkLZ8pUeZ8nSs6LE+KPpXU6Nys/C8VK70rxi7f6XG4+FaevrE1d3mpuYmR71Phz4DuIsA1YyI0mk7fniO3h1oOudv8+L7hnyul7YO7D8qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770843294; c=relaxed/simple;
	bh=r8OhRMF99Pz1lOdwYa0u4iqs7HfX4fV4AIUI6gsYc0Y=;
	h=To:Subject:From:Message-Id:Date; b=K0BEJTWxyh03EDs6J2t+4qytOR2g9+TFM0NSpWEiHO0f6XaHdrkhrOVYY2sJo3AEC3KMFYrZAFXEKOy5+jFG1ouk/A+2IMwXxfSa4Ttxe6C556HlvWIextXADj2oHXHIZT3e1ovQRPK107DbigXf6/diXt+bkpo8wpcnWmg6Soc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZwud+ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZwud+ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4F6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770843293;
	bh=r8OhRMF99Pz1lOdwYa0u4iqs7HfX4fV4AIUI6gsYc0Y=;
	h=To:Subject:From:Date:From;
	b=gZwud+ZD+gTbYJL3TK0J6QUO+bZFLTQTXH/YiVbz+MXnTASXBTsVvzKK4bKZZMyzv
	 O0by54t47VhBYBj57BQ6Er5yQXVo3evBSJzf0luUJp7hMRcti9a/bi2Gz9hTeACGMR
	 CpmknZMw2ZN9I0/tas+NFYRyIZ+91mfp3JKa+FU8qFJi8cTE8/7Uf3HxjUxjzC3InF
	 2S0f10F5BCKJfRDAHwr5reYWAW6V17Jns03j9LcNmGveH1QhDDJKwk4BOQH/6dve2f
	 oukGTSIC6CuL1EEgqQno1jYqGaiH7EBwo0sl5qC5FUVkB5DFR6tGoAbAoUplmIOMfP
	 1ZH5opWwL2X9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981CBECD6EA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177084329360.23203.16090069674215632662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f329fa611c3cd25fa09ce39e9e1dff2642c8c0dd046df93f523b2443a490fc62
Date: Wed, 11 Feb 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770843293
