Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C369328B5C
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766042634; cv=none; b=PuusWdukg6a3VVXK/LnNBKb6BMn2bmOyOHRX37gByN5sgqCPjDRTwYqE7nMJz62FGDyLYC/ImUxcwiWEF9SP0FrnkuUv51UHFZjOzwXIvQaEMsuGmKF9gZfpM1wAYiWjaHO8HnmueZwLwWsifDW3TikpXufKR5k3xPAjGZdwOSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766042634; c=relaxed/simple;
	bh=1vn/QSm27NY4sXN9aOrpV2XZJs6VW3i12ptx/g9TaBU=;
	h=To:Subject:From:Message-Id:Date; b=uJFd10ej7Eg2lyPNpmXYwnENfwlKU0jSgY7j4/II0CaFP0CLr/a9TN660C6bwIvSmv/sPL9Thc0beF3pkUobU3PDjF5RYsmPnc1jXCmpqO2qWzcSq5h1HpGN2oR+YJyq7TeV5slTr4zntytZkGApoUTV04jUkf7wIMwVQuR7tPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys6n7MIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys6n7MIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F59C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766042633;
	bh=1vn/QSm27NY4sXN9aOrpV2XZJs6VW3i12ptx/g9TaBU=;
	h=To:Subject:From:Date:From;
	b=Ys6n7MImAysWB/aThf9vdrI4JbDLUog6q8Q7FhcaPOvf3dOIv7vijMqGml6B2CeDo
	 MmxZRcz0iplKhz+ZWTM2OV4cIo8iJZME4EZwlSsDzz2KxofO0Dz0nxQnDeudNlkA/e
	 zzK3dQ3qkUSdo1ktIfb7rN2R0kjs5cZRg4ZLod4+R7j15JxYRyvE6wGs4kRKAEDSks
	 b94SminOK4wivpxUvIWoQpKzsEYIZhZBT3Bbte+hWWhPVEVfEeE7xagJZRh5X5j1TG
	 6UV5/KI5qSgVd5t96atELZynMIX/2vv6Q9vYsRg4qPxPfhkPuAbtF9fL/00N6G9WIf
	 JrPLzkhegVizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E11D68BE6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604263358.3697.2958017624142488905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8e0411ee6a69282c9ab08bcc04da861fa45a8a1b9c80b5490b9b262235bb59
Date: Thu, 18 Dec 2025 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766042633
