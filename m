Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFCF79D0
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745370594; cv=none; b=AiraCellj0WaMmptgxu6/J3tOwFJ0UeJCpae/TrU+H3as+chkeHqIUuCi/W3Eni0Qd2ZBUVJqwMztEWKAevVyN5bnBziKWqoVpD4Jbvgr/79bXVFackMywJEq4RbMIH95oOSKU2lcgWxUURfKfj7Z4qfHHupYAm4qVyXjZsUVI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745370594; c=relaxed/simple;
	bh=/3+e/qsxpLSTIPKwuO5XWZXpKFlWU00s5vphHf1Rr5I=;
	h=To:Subject:From:Message-Id:Date; b=gXwjXCdF4im1vtOlRF1knihPUq7MaQdfITi5XEEPNK+MG2H4jc54btyH5LF1PX/qH9UF1/2NRApMC4fvEQqdzzF0h1a5ZxC8oOpU9/NQlDl63dIjAldmhMHb5X1Ic6bHeMKld9fNVmTccRfNlyxUe7vnEJVbK5D3bYUd8Shqr+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcZbOoVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcZbOoVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D3AC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745370593;
	bh=/3+e/qsxpLSTIPKwuO5XWZXpKFlWU00s5vphHf1Rr5I=;
	h=To:Subject:From:Date:From;
	b=mcZbOoVoTiXc+RfXtk9DmrqNUdI59+EIYs9c0RoTcRUgWxN3OjbohmZzbP5kfP5FJ
	 niO4yVqYWDVDtvhhmu4vZZZ5fSXF0rHWnnVRJ23jXPo2+IN4NwYNiKw+5iOr83A1f6
	 T/cCONoI5oNbwq8cGjvspaxOyYFHX0JBcRI44ar39P7q8Jq/i5Mk5r0c94toBX6EM8
	 tDAaAMz9lWecyzdaaU1s6nabvDgtkr/GAXMLWviOu8IG56Bim0yXAx9rY6LHz6GriP
	 rJSIhGOJx2aFB2VegVtqNMB/wpya52nk3fYWDBwSepTHjlvMXih4a0bQ8I06VoAbjq
	 nXYjaP1MZd+Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504BC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537059358.8390.5411296812560088341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48a5d2608bace0814374f6b14339d495a59d91838c94ca1a37df6c167f8d8e4
Date: Wed, 23 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745370593
