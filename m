Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDF622331B
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738819555; cv=none; b=OTNn/igxiIZwwXDlDq2dU4A1FoAHHO5DCvFoUYCXaFDgL0kq0rqHc4NlXHbQ9hxs9KSu6p1CYXSVNlS3HUC78S1dCNQ44AEyHw9OKU4zAFSt+EItLIye2cWvfaTcgifq6emsk01ChO1tMwsvlROAJtg8rv6IFKQLh4i9K+J1O9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738819555; c=relaxed/simple;
	bh=Re/Rdq5WFOuI01aKYX2zzeJ5aTW8x3I0mHH8PTRhaDM=;
	h=To:Subject:From:Message-Id:Date; b=AQCGK+OSjuZqscjf1R7Bj7x14Hf3urGF8bN5rsO5SOfKqSFpK6cjFYcXr794uqCFotuVz3kEYnp5flhsjQTI9r8YiCkLZZIpu/NcaTqZgHmYSo5UvYk10quxofiE2yjoxAMhAR5NaiCRp5Blo3nDuINmyLD1voh5EcnrW77sDFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nr/RCy3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nr/RCy3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9814C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738819553;
	bh=Re/Rdq5WFOuI01aKYX2zzeJ5aTW8x3I0mHH8PTRhaDM=;
	h=To:Subject:From:Date:From;
	b=nr/RCy3+M8bPsxBeq3enFafCpKufx8dWOy1sPsdYZ4AqEQuJFaGgaLEg561bRnscl
	 J4dg6w9m+1e/yViCDxOvM2Mo+eWe/+CMlIG/xz+ttlrsaipFLIJ/Blxcx0Sau02pTS
	 UcVdFQ1sZifK0nbMQaB9ww+mCrpXkRjbkZVRaRa8g+o6BYhHUJw6wx14x+X1YOsRmb
	 f1s8eOGJxVQdZ+zxo0K6cYvZjgWWGb/i6XyMkkx67neyJqd+sIrzWPZYL36qle7adD
	 +RtALpvSqfy8NFjTwSGtEItHTahAoRp5Jzzjm0Jc2pFFIR8sj4hnt5HhldHW8ioqrv
	 lA+/51lYkhVZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F63FC02196
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881955364.12772.9308766333788506373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8568bf7c7f15e16f156b43453f00216a5dd5fa4cbd18a8b8a03c700f465a4a3b
Date: Thu, 06 Feb 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738819553
