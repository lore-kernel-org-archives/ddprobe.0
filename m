Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C8230DECD
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763310114; cv=none; b=n/OoYszKdvtE+LOKnMPlhgW6IyV+WeynnWV3ArN0p+OVO01Lx/0hISTCMZeQtJXvTiTxFNzOpxOSnWzYLGV6yiId/nahXsQubx6rImKoiurCBBF4eIDtSdfLP3d5xZYj7Crp3TeE/WytjQKE369TKOsGXW9FGpT2qgH6TA0G0Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763310114; c=relaxed/simple;
	bh=KfAEHL/0qiFQHDGz94LbdGpmAJnrIYJHNOEUzXW4lJ4=;
	h=To:Subject:From:Message-Id:Date; b=fUqv+nh3pqD6XcfMxlYuu0+U8KwQrNVBXaXK5awNFPd8vU9+uf0J0o6OCvqYwsUBb5LeOdS+23IN/D11AtM6Z5cKNY11Jl/HXN7vklDRYvdZIStHraGQdeZHK077Fwb4Jz6yh6IhIc9sJQxbX70df6g3W3tAzDGN2G5irDCXhkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vp0fYp27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vp0fYp27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB5DC116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763310113;
	bh=KfAEHL/0qiFQHDGz94LbdGpmAJnrIYJHNOEUzXW4lJ4=;
	h=To:Subject:From:Date:From;
	b=Vp0fYp27eaBbdWp6w4NUO+/Ep24km25EXJcBt9U82LIwbKp/hHn8RDf3FfzvusMk0
	 UfufdsaH9Ni2auQW+EW1MxIC5LjWQ+nvnr40fp53ht9Gu4FMPN8mLj6pcv8+0rSoHU
	 ht0Re4i70wCiZqJN3HDPqHlGfYf18iI4vZeccxNH7KPkRr6a6cKALhJg27eaHUoaC9
	 45QSW62em8AjQCU+O7DZu5IF78dqi2grvdgTQjeB1R9rsS0oWDsZM1900aZwZOaaCB
	 yi7DQSXrfielATh5ZC7872XQSYRrIkLUfZNifRhJdJ2wBH2VLXeYwVUacNGC1oWYmw
	 Y2UzOUphqikVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBA8CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331011362.15011.15315419062254308355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2409ee73786396698038f0e29d527f165e7c622e23be74a2162df0ed6e1377
Date: Sun, 16 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763310113
