Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AC110E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721401554; cv=none; b=AUtMiQm/T5A04DXJyYPfRwxKhaBSOqv7Uo6tytZryiOK6ONZzeSNNywMP49loqHWEVnJTFNRkVnA7lydaw4x3VqcNQApgKZY2jOEEEXaYEjKPDnFcS3fcBWwf++XwfxYExNREkWniTnGBt+hKbbeVBK2255p8rZLm6R8Xz8T10M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721401554; c=relaxed/simple;
	bh=3LRy+p17uSg7N4QI9a8T5vxsLYuKHvtbLRzkU+FC8PQ=;
	h=To:Subject:From:Message-Id:Date; b=Txx/h+MdmD7n4fTHMpsVJspmJ64mWk0sGLR/mFHTKjtgTc1YhBm4MldalWcgY+7kmBmlasx6FlcSlFCoksj7Vt7/+9Hcx7OMiBd5LDyXTY2y5z/veKlmij7YSXOH6750skCMkkMAo6B01xzX4pSPs0qVG3GNbWbYU8zLd9iHyDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PT/INzqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PT/INzqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBD6C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721401553;
	bh=3LRy+p17uSg7N4QI9a8T5vxsLYuKHvtbLRzkU+FC8PQ=;
	h=To:Subject:From:Date:From;
	b=PT/INzqYarnuPDlthEu3MJpgXNLv5w2ILjfKjKi+XZTnDpjrHOdXJqflKz95Ah4ec
	 oNpV/sLpyRRLLQHnZgSvBNoZzafVAK8+vZoNG4ElCtUdQGpPwYQRUqMPmdo2OnZBY7
	 geaqBlb22RPgcjEimnqwckfaUBcF5BIUZFsKwgLZdRB5/LhZtvD/7pdxJJLt02lY03
	 PFkpznJDsLcird4pV4lCy7/Gy651cn+hA/baRLLpqOEClAoWmWWJhf8WQ1Ckp6n/KI
	 dfEIGRju7zuG8UQD8f58U9MmvQ5SQl2gi07P8i1612WUqYo08p1VcBuykNv7eLU+Tw
	 NmisBG6YBdpMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E06C3DA63
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140155362.10265.7082347879247581675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e74b7ff2edf56a17ea5168eb639aee10aecb2b0d69b2f3508b6efdc0bc06149
Date: Fri, 19 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721401553
