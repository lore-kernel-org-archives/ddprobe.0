Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284881BD9F0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759859394; cv=none; b=SFbsvIDaeL7z9f8g0OZ7QulQ2zdIxHxT2OYehFfw3pIQS/LbyhGxJUIe/MQIDrdMOqAD1h6SmbrMzNc3jD/m1deJAtH6V9EAauPFnUnUkM+WAQm/eb7/U38h6KSP2W3L1Q0S4MWMeSPhlfVNTHsDGjqpL6hjLR7+6g/0QnK+Nwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759859394; c=relaxed/simple;
	bh=37yk+hhmk3Ixp9aiJRBiRJNGk6yL+LjbQX5zEnPZp4g=;
	h=To:Subject:From:Message-Id:Date; b=FuFuAE3watKvyCBhx60wyCdo/EOuYAXGadZXsCiPGXCPqr3TnmI29J/YAXyrT9q7LMkr902Qw37GxPwD+eGSbjW49KDsAmO54Q7/OYXeZ6pQ9wHkOi44xhLc/P9T8Jcun/5o5O48DAVmhqdkmkn2O97k++HQ1EsvFPyEacGQT2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8kmAaBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8kmAaBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BA0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759859393;
	bh=37yk+hhmk3Ixp9aiJRBiRJNGk6yL+LjbQX5zEnPZp4g=;
	h=To:Subject:From:Date:From;
	b=r8kmAaBvMMDy1Gvft/kH8o49sE907aaZJVJG4QAFKx4kLsXHZTIeumOcHYWD+Clb8
	 LjVF8f4GmdrSYrX1xwRzMjvqb+jB9xCk9+V/l5byBpi6cjoXopiKiuoWxUeaNvvwa6
	 xxAAghLq24ZNpF55uoSHoFpDT855Njrm5MtRcr5h10Fd2hKoa6F+6K3YG8mZV5fo8f
	 ymF+O+lXyd3ubzcoPU7SKVDLsVsPi+uQvC5sQM68xvutl5+TVhuQx5sD8NN5bvmPmR
	 mOJdlrHpyVfhoGjfeCQjWxiCoifo0euKMj5hcLy2tvIhyk+zKbTTEHzFpkqvLpfVGt
	 zPl+wPJvNrLEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F471CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985939357.3671.16358431067731542891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0392ad729c13fa613764cc354c08aeb2f068ba7ed1d06504c8018ee3b11ee32
Date: Tue, 07 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759859393
