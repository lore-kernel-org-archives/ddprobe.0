Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811CA28F4
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719028943; cv=none; b=pE34/vMg9fGF/ruB2EitsQQOgozajIvZHcf18aF/gQOO16ibCkWUgbQq4oZhXArNoJ3Ku5qRSfvds2rFhmkwSUb4pw9axssBa0hH2Pd8ocAhkW8az7TVtvTIZyIO4vgCgdftHAmYcaQHmolSvjIqOzOZICdy/Cjr+brrFABK+Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719028943; c=relaxed/simple;
	bh=YNln+hfL2sidshLpvJ4Gd9JJCd2LsDbTZGq+fUtoZJw=;
	h=To:Subject:From:Message-Id:Date; b=CPAYs2T8JVq5sO0BFwY47EZgs44CAVJ2gFTYo1Mrd3M918RCGGvnVPQ1prw3mnT/HuoQLtFyhG+vZMZH7TMKJFbSDXmZi0vF9kN7WLapePeXSemo33w5cEZs4DVtSPlfW4bwgVwmQ99mmwmfZUL4ClS/Cw4bL+dvTc/NfAObKew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0L7d9bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0L7d9bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E877DC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719028942;
	bh=YNln+hfL2sidshLpvJ4Gd9JJCd2LsDbTZGq+fUtoZJw=;
	h=To:Subject:From:Date:From;
	b=k0L7d9biZYOvfhdeguI0VzoIXffAbpjOkwXYKKT3wbAA6fQeeWf0w60+DXevyFSSe
	 /KV8XSKaNHf7t6RMFwjzUn032BGL6ukSk7mEjTKApxjWtGpw1+Cm3RebWMYRB5u12J
	 wsUMcrwMrjLwqOQCCg3rztCo3qqUAg+gcfxU7qE4JoLwy8g3rv4WjnWIUJArNqyP5G
	 3sjq0IaFVmryiHy+uLxj3q6hmykk1Gt+C6WJ5mjLG8bUsx49lIcjTcm0y1wtgVPLXy
	 zxL3m1hQohKmTknKfXNUzq/8kWlh26PLANdU6p7BJRHXgM0FM0h96YORwVckvWfRZY
	 IqPUSsZA22xyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD28CC2BB85
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902894275.7776.883921431467079801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4184283ca18bb628aa09158cfdbe991334688fe0dcee3473f939c233975617ea
Date: Sat, 22 Jun 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719028942
