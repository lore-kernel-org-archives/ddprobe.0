Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5940D15380F
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715609543; cv=none; b=WyrUCw9tILLyp9zqhTULUUE7LlyOhXrNXkQa9GDBLHISBYte68+aS2yr/nnwBnQb6i45XyKJvd/9z7e/7sYlNTyMbCgECRlUHh5eOtaKlW11oVrxU9gYwSPnAm7yzoHQxrFpUd3EEfZdJcEQJDlyZOEkq9C8U6FBmp/glznfMY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715609543; c=relaxed/simple;
	bh=d/Ahjx+f0MBB6ZhQwLysNIcq0BqkmGgEhs2EjQIwm0o=;
	h=To:Subject:From:Message-Id:Date; b=giFDEk2PQ8iIwfgb9U7w4mE0OoEUIZyhdMJ5/I8D09GVOcaNv5dm8TQaNSWIxFuND7g+60uWyiy4wjb6/XQMrRJ469FA8KzLfFZ5aVj9GvBJoRJ7uFTZxQ+hZxX9iVD+L7gDoWO5xTslP0lPhXA7P+eqEMZyC4VBX3BtJ6nCUqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir81eeiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir81eeiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAE0C32782
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715609542;
	bh=d/Ahjx+f0MBB6ZhQwLysNIcq0BqkmGgEhs2EjQIwm0o=;
	h=To:Subject:From:Date:From;
	b=ir81eeiwwvKOkryuRcGySob50im2ocD/ZUjN8wUCUkQPb6B93evTROviuE8/27n7w
	 nuVP/CdZrrlLalh08DvmxCB67yonS8k+9rTNxVSFr8Vi/8sIV3eM+7lRczlZ75F/7D
	 WM5lPWHnQCuCZlFZDTrQ3Dqyy9/tUzXEr4rfIyYWW5AtXPhfOitRhzTzosVYPM9dBZ
	 RK9Ovlf1c3QV4flHOzWbVj/v1pM7BUg4mxzMMTya6bxXddSiWQXW7XA1xIx9DVV9yC
	 4kdWMx58q6+FVew6dL+abgN4VYF/96BAJc8+GnVYp2JRFr3/SY8XjDAQ+W5gi49Bmh
	 h2bygSBFwnIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2272C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560954278.12018.4616066810377470262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206eca619aec4631ed8d2a6cb529f5bc486a2831f56eb8226447bc07e55cc08e
Date: Mon, 13 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715609542
