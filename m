Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA9C12DD9C
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709820496; cv=none; b=JlYyBstTivpzyFqWQ3WI8i6BDWnBJPPIwn2+YW/diFA5pjCBpuRYI97axktOJv93iEqOjbUU7pFxUH8UR+bVb8mGI1rK2JJFq1kZOxDEhVd+HR/iIK0A5lQrUzAdKlaz7ksDyfGWmDFz74Xvc2eRFnTVcgBd4828vo/5Z/8kUys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709820496; c=relaxed/simple;
	bh=X7d6DWQbb2xk0SWIZhd9/2GQEFmFQQVDDPll/mwxp5o=;
	h=To:Subject:From:Message-Id:Date; b=UykG4ms5t3bzIXZlTr7u8uuz1MXV+BatE01vnjexJeVEOfl3UkZ5QLgMmZ0/rYI/miAbGVrZv/J5iQZnfwoGDrvjtkTr83vz4si0foFPZidChGgeHt1716+/lKrcEXWUWR33TiYJtsR9NxCJqykFyFCVGrcMnJ2ZkVwoACCdyUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbNF6BGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbNF6BGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75282C433F1
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709820496;
	bh=X7d6DWQbb2xk0SWIZhd9/2GQEFmFQQVDDPll/mwxp5o=;
	h=To:Subject:From:Date:From;
	b=VbNF6BGjJ7JpO3GBYtCFxTHtTpy8ihi2o/ABglJTDwFdDu2LTFC4r5bWiVvRTvb0I
	 M8Ta1B3cY3U4N6YDlS9rHtKSn7Cm2buNYlol+UiMxsIJ3jxPX8aag2Ui/VdbGqW2nX
	 WPE/IBJorYexOVhoQPE1Y8vT2SPCt1uEb2B1ZjsmJZW1hJ6x0ZeC4lxXAEYy9QuLYd
	 u/ggU8dkEQcdfqHEopW8VoAbx5Odo97BYoxMYOYjQuuKu4lG6MA1ZqxjoGG4X6F59K
	 Z4A8VFZTmTyHGnkmxBeFfPFKWctEwGvd8E+m0fmCe+9jHrhVBbo3AglIqgEB/9aCqv
	 9onmrCwAg8P6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2F2C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170982049637.13038.8060566592751010237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddb72a9931bdffa097959ee7eb8767391cd9c782975c0c1086cf94cd6ac57d4
Date: Thu, 07 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709820496
