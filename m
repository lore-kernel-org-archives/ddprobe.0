Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB573395AF5
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778708433; cv=none; b=MlCrLdbxJ0ZMAhvhb1QOLo6qIYd8x7uwxSgC/zfRYWBR8+nVyBGniwtTDGFiByM6bFsarErOtHGEeFkXLXCw7hihK1y1e89ZUPk4PdTfcbgdthhz+fIeiZ9sOF7M5Qx/J7gLEsimetm9dHBuYMJqfgQ5BIHRS07gVKC5ASGy8Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778708433; c=relaxed/simple;
	bh=WxIG+zZ9cDBwomhijya5S3xvnK5ZhRjMX0gm6SjOGpg=;
	h=To:Subject:From:Message-Id:Date; b=Gdhsdy21VjVERcmBao9gkGs/eXs8XZN4KX6SnRRxrLKRpgpZHkAtpu7dA5JQN4p/jLMoXISp0FLcrl6E2TqdlMi77b0DjDyflB0VXdFJXOZa6ONfOING35cT+VF1vIBxjgEcVCPnjzxkQg8qj1PoleaF/j/5HBJMyoga2cRhbRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQXZLpf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQXZLpf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE151C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778708433;
	bh=WxIG+zZ9cDBwomhijya5S3xvnK5ZhRjMX0gm6SjOGpg=;
	h=To:Subject:From:Date:From;
	b=eQXZLpf/uQMsN2f/T2xpF/TzdcCPZcoIHL4kZPt8pcWnEJ1X1RKM7KvQaY+a7n/LA
	 UgpD5qG1ewCipa4UGD4bKLx7xO+xklvBqLYNYLAUmsTIQpZJQ5vQHtwpOYQ1XX7XII
	 XQtDtRNdx2n4Clms8ei+5CTjL8nqHEAzcJTEd8dreegpDU9tFKTLCLQmx4b5N1rW0A
	 jRW6Hc4wGySS1uD2yy42Fj4Gi1JOKGQLGnRWLQujbKNpP5U5hDzmNbjIrZux+Wp/TD
	 mCp7KSyz0fHVrdvQYa60OiUMwBLm7SjCvqqWbkGMFcZqfAd5jxUF2V4WAPOutOaVyg
	 mnLxTnsu4zh9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE00CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870843370.20617.7211434045071747801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4850138dd344dcb73c383e91033711f226826dca592907c4cec030866761d4
Date: Wed, 13 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778708433
