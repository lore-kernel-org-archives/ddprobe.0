Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201E351C39
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773340494; cv=none; b=kBt10KL9xT8A15jY3d6Owy23TlYsyzoTi+9G0Akbf+bc4enrHAEy21EJQ4Em2GRk0Wn9OcP8U6Zjf7GyeEjSvxW21hGyGbvNzVwKNg2dWJ7a31MLpYhFORPetEErZ3mxtP+SHBUrXh/lEhMBBRkboRUzMrnnKYAGNNCQJOqktfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773340494; c=relaxed/simple;
	bh=P61qF6Rdx/+BxH2nfcCbf024arcZig24cE1a6iGBo7Q=;
	h=To:Subject:From:Message-Id:Date; b=oGqnQhNNiKZZHnPtwGpDvhea7Tt82Q0QDnzLa4QsaVYvX5hRIMk9PHajuOA3tJbK7OJG3udBoVHeWFcZEGvHGLBA8OhDmPh2mRguhDyY/joMGGpfQlk7OnBtfBhszLw6NZwj8Rq6xiVMXHy/eAIhsdGpnLg+TCwch6a++B0LTWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UW8RvSVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UW8RvSVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C43C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773340493;
	bh=P61qF6Rdx/+BxH2nfcCbf024arcZig24cE1a6iGBo7Q=;
	h=To:Subject:From:Date:From;
	b=UW8RvSVfMbZRXkcFnt/us7qvmpevY0fMo9vSFH2vwNPnspsHrOsgx4FO41m1PW0FI
	 Ki1HZ7WGMToGozI4b+cgdy/b6yynR3lEMv7KTV0mFOMWOPf1OJLZFxl2Q2AD21vT6a
	 X0pDIdBX+rfuXNGPbzSHZp6JKV5XUlm9zOwSxTXFOudHVwEunSI4LVhIKSmRMVwNmq
	 nUxHEm4SzJgsv2xUxXLux8uei23BNXStPv+lQEJKRdKep4PDIlVEp2Uqjr5OzUCFJV
	 PM0zaUvin9fZSVrDyGd5s7SHKrfqa+7uAWIEPSKqrsij+SOyhqC5AfqkcZFlJXVnWO
	 dCqeADvHoyfMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9534B106ACD6
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334049358.12455.14749441985303024604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb42dac02e64639e812a4c4e86bd62fb9c6f563ae4e4d73b50366840b36ad8ce
Date: Thu, 12 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773340493
