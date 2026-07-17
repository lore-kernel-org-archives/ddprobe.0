Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE503191CA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784261314; cv=none; b=Dkpi99AFi0doBj/xUj+to7aDuSPhKVmvJdsEEWQ4MwabL/QXO2riGUmFbLh+YKcGgAf78T/5vepEup7pXP+4Rn815+21Dg6c3WgiWSCq5c43vYeMDrm+2tQeN776UR4sEvMQEYu1feJ2IM794e0WlmE43ODMMLKl3XlSveXF/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784261314; c=relaxed/simple;
	bh=ty/Ue4L/hgfYneYm9KmLd6OcygS+bTLoh2C+7Q4sCO8=;
	h=To:Subject:From:Message-Id:Date; b=jJqBxVLy6OCQV6nalV3LClMMAZoXZZ0CqTms4QVBSWm+b/PUKJFWq9F/0+KtD514IdLxbBueHXU76+733/hG/U7XgFZ6KmMFJ281GqksjHFLtWdKrO7mic8nRVC5r/25xxTDS330c41Hy2BawMv2DndLznBTi9pg47mNPphfYAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOoNUt/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOoNUt/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44ECC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784261313;
	bh=ty/Ue4L/hgfYneYm9KmLd6OcygS+bTLoh2C+7Q4sCO8=;
	h=To:Subject:From:Date:From;
	b=YOoNUt/qUuO4pk/4CoRgfNBo/F3Pv1j97evxOm9dRB4n/qoTqwrj2R6bztY5YCqWt
	 8ieMwsREB5gbuQY6Czj9Rpz0U9wsDrWUMpgCS4xbnP4rm8SIg1/c0bJegYTKIRd0cn
	 w2ooiRfXG054mA08l3c7XK57S1M2Ik5WAUreB2lqhzltpScNMaTtzgaQ1ISeY9xmqA
	 t/0giVBif7LWzk5+3TQ8YBfndZO5vPBmNIWRNPI05acFBTIwJYMRgL12KCGw9/cxnE
	 xFbfZf6PeBfUuyrTtjfpSaHUql8GCIPzyR9jSXplNSs2MLZ5Dwncq2YQxXGiVNwgru
	 vTvtIhJp8Jr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DF4C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426131369.13903.11170568497222746451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70d62543868c988d318e766c98ac858a2acc5df90b92d862a4bab673177fded
Date: Fri, 17 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784261313
