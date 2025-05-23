Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304DF18DF8D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747991994; cv=none; b=rfIFYZJmfY2KWSxWgCTu8kdnviv8JjkYKrFLDr7I2PM/B/lITQ6jhR5yiPv3ycjY2snvRd4F5Avru8voWq8CfDv7yGQAXxGOSextxIWq79fjMcLZmVILEKzmK7SPfUHDB1WjnFYJnUYbJkci2Ux/heY7Yf5qqaXqkL0+3GUtLC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747991994; c=relaxed/simple;
	bh=TzppX2QDagvhdVqEdQ6qnR1f4MAdqjmCIIJPtHwWwTo=;
	h=To:Subject:From:Message-Id:Date; b=BIfdhbcI9BRkai2b14ruhp5+2wy7G3R/veOGD09mYDGEZOHEtH+jO22YSRh6nA12NyfxDxKiaVPbuy5rx40UD1z6j2+Xz21jIvwAcRey6TKe8wF7OQJK4ki8QNJR7w27HSPLDWY0X6KYA8UmTaZ1MC1MxOTkcsOqKwwptE+psDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxWMZZRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxWMZZRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F20FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747991993;
	bh=TzppX2QDagvhdVqEdQ6qnR1f4MAdqjmCIIJPtHwWwTo=;
	h=To:Subject:From:Date:From;
	b=ZxWMZZRyoSZSO4fIsj8K8oHqlu8w4P9K5dalE2CTGAediliceUcXhnTzFziNH9sKx
	 /2iLjOrVR/RbsWKnxBV7sCnLKju4/T+uKHtDNiivlKMoRTKzf2kRxu6BOfoMKhHUgM
	 xiel8y7Uo/jTi+1KbBp+xk6Vl0fIZWSsAWM7sVJ7zpokeH1xGkniMg6GmyqnWiDrY0
	 xIxbOsZRy/vryL5BQAqAVctoVFak+84H3J+ci7rC/U+/SQggX7kucQHhOoUXxwwifr
	 NAPziI5rTk1xZn5JHutY0E+zdxp9yIpnUUgUGpgxiye179uJ7yKhigyCRJVtNTJEtB
	 lFmLgxI8MTjdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F816C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799199357.12497.8144491637512756678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a670889be04cf04aa8cf933d81ba53ed369e67a95d3b782c73312482beee1451
Date: Fri, 23 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747991993
