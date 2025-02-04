Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453452E634
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738675554; cv=none; b=G774OOqA1ELyJPHNqDQKttHFRSHpU63nASF5SLetDIjCkrMvyXcDbFAc2tt/RDU+6+HRXDkrcQjHPbKSCVpC8TjjXHNOWBATAIm8vUr74i0EdDhaLUyWPTlEcNmVgj3y6PHzXOJGdZ18TnHdGPcNfJjUSMOXB3bpGyFMj4N77jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738675554; c=relaxed/simple;
	bh=OFV8Pt+3m4ssfSKJ0dLaMRxwQaANcrFbKacEZWhuRQg=;
	h=To:Subject:From:Message-Id:Date; b=jR8TjLFMGroodWZKTR1slgdps4JzLLiCLMJ/Q2zQGC89L40ALD/WJHyoNp7nfIKCeuSPg9c66NqaxtK+vVapnE8J7mUgvZcvqhn5nbdJ2yWvRmBFidc6zOH8utZULpdEbWP4tZwq1t7RKFhMQekd3Pp7pf9BrnTAM8SN0C+MKaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqlZ3+Y5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqlZ3+Y5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6001C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738675553;
	bh=OFV8Pt+3m4ssfSKJ0dLaMRxwQaANcrFbKacEZWhuRQg=;
	h=To:Subject:From:Date:From;
	b=cqlZ3+Y5u9/pUKOEU0HYpj0WJ1oJ8xcS/1WftOxl6S3LTJorYXbLmnzc/X2JW4EKA
	 PcNw/MSqZYnJVK8YZjBCem612HbKm92XLE9qwDVL6fhSRkTJ7xp/gNOCP+Qa7WZq5w
	 PYC574/cz8tEh5X9QJANiMkAOXl0Bt8FGjlemDcnAtHzjgiRTbCQPqd6a2M2Ld4QUn
	 zR0fv7hPhXnaFtovQeWEpYPZAy2pNlheC8MipjwpAyiQ3a/uTEHfZGrtiCCdElb6aJ
	 ve+i2h+KHG6So2UcPQrF3Y9uGx47of9fLc/0sW50ZVM6Lf058gx213vqR807d/bAXg
	 4HzqjM8SbiULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900D8C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173867555358.27489.3949365491495351154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f26d4580e37d045829e19929d4c1842e4685ada0e3a95d899572bf046d9084
Date: Tue, 04 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738675553
