Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073DE38A709
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774989294; cv=none; b=Zem7wHjjj3TUtgckO/0r0VxHLYuzrvG6FXijWZBiCRlYFisklfz7pYKy30BKAmNzQoiE0m+TLfyzbRu4x9DE5Yipm+ARJWfsjwkDYCs1Ikc38xviXpm5w6M3mhmEur8PxqW+cSLYqr6vvd/5HsHQXWbc0bonREELerXV4XG8nNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774989294; c=relaxed/simple;
	bh=hwZv7fk9/jDCewAfmnoS03hFyyHnUyq6q/81aSi7p7U=;
	h=To:Subject:From:Message-Id:Date; b=PPgUNUaRZgPfeD7Yd6LQcmoV9lUrz1iS5FHMHMtbsPOVctbGkIukXPEfvGP+NrTCnhXqrYTLypZu3ZsvJXfpkr7pB27Hyd0b8cZ8DmPOwCyOSvF8lZp0uy04Fac2OfKsOz+sxcLnDSBSZnygBd3lGMUNA4EHfz/RqBRSSbczqAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBUoKTn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBUoKTn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB119C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774989293;
	bh=hwZv7fk9/jDCewAfmnoS03hFyyHnUyq6q/81aSi7p7U=;
	h=To:Subject:From:Date:From;
	b=XBUoKTn48d7Fi1xULR8ODTJfr6fp45GMxpl/cKkPXUxL5zL9GvHaUab+kQAxmqWhC
	 fLh2pAsbMI1+sQeXAIh24MBSCUOd9Gd8u/e+UTiCMlToUGLLOFlcS0or8lUvUQc3e9
	 PeqB0y6UYN6Eo8C5M9hppnPSnCmAnewkwg3wu2mfJP/VlCj9EYcGx9Mi65TSEHkAJ1
	 zL/H+z4eDkHsjs21bRnGEuPgdfeJhYlFTcrEdJAZY3RVOC4xBaZgoTUkQdT8YpbbmQ
	 IDfi/PDGqJAmpeMX/S3ckjj2GDeHO9jJ3n/jA4axCM+dtO+y443QyCz8EZwcts0FzW
	 Lg9aNgWDmOLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9778B10F92FF
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498929360.14369.8828475216207971439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c55cf8674627ac27f44bb50e845baa916aef8d54f13ed61ab0f314082eeacb
Date: Tue, 31 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774989293
