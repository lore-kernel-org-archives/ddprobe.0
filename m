Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C25933936E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784718514; cv=none; b=HN3jRkTFcDZpIPPrH/NyfgwCLZLunImctRKjTjF7YuZdqLTvZMW/ZIxxrFyBP/oYSqfkU3dVG7uIk1A9ToXvUxlyyTYaunsDnxO0f9fAOPcWF5A2LXTo7J1OLpZOH12kgAsLDmfsGdK6D2eZXR0NOz9m1Pd3wGXkbbYpV/uF8Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784718514; c=relaxed/simple;
	bh=8VYJ5RQxYaBuRt2W6Nq0YqACNSNbdOK6/x3QFAFKKK8=;
	h=To:Subject:From:Message-Id:Date; b=p6z27DSYoO5YD5JRlnp9fVLMwmuGVK3EiNcNqGL3iiSvyG1ZeYRjok9s0hGquYE8Wx+HUZdTvSQTpcxFy+HIQ4j2ynLaNZm8LMCbJ3t4h6G0NNANfedXmVXamEPg6Bf4yNT+Ye0Ddh0u1oTV1QAm3wBeCkEIAXFxHlTL9ZhikLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iliXB3R2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iliXB3R2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F43C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784718513;
	bh=8VYJ5RQxYaBuRt2W6Nq0YqACNSNbdOK6/x3QFAFKKK8=;
	h=To:Subject:From:Date:From;
	b=iliXB3R2oc9B4ztQQekQ008dhGnqRRkEB9FBVraH+4KO/ZzIHC0j1bBw3zVZJ/Ce4
	 7FKJP8ewUk60REudap3YUnrEZmiEglFfkzMmEXDhyN0+fEKgRSzBTOXEKZCLRZRXQh
	 60I2KFBTIKevVeOdK0Dtd8Sri83GI1/GP3kOOSbcjofucLeHoPJUpWOTGCATZHfUJ1
	 HstwNtGspg+LZd6rKe/4luurwjLtJDehofsRvP+isgKzRUjrPFvHt6OCb/TMPxlz3e
	 cDUVQJ3oMkLO0u++DpYGwPVK5weZg6tDOawqpvVCDVwbPhyqWpYf4CeB5AaNGJ7Wax
	 MTnObqZDWK8FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E2CC44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471851373.21552.7790852228229140209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59a81047fb39bf51003413114a28c412288adb5b8b4ebad4e96d9fe8ac3d090
Date: Wed, 22 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784718513
