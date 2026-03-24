Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131203DD519
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774357494; cv=none; b=Hi5LAElAo80M1WXjjO7SQNc9WjpA0dSVtcPMA2KO+t9s6NPJ4QYVmGVxZvW2jvlzes7vmhWu2M71BaYrxRsvmcGimP91sw1/SJUsbeXUmjh/Tf2o68t24B1fP8PWrEbgmupkm4s8ZjLHi+oFSyPVlnofClNKeQOQXdLrgK8ti+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774357494; c=relaxed/simple;
	bh=1U5q0qXulJlkies8VoRLdwMcdJTi4LTPhvgH4RHSc7o=;
	h=To:Subject:From:Message-Id:Date; b=sU+xEKB4rHIylXSaZBrZE8CvUHBos3QMnGq2ERuuagzGERZDHUPnumrvsT0OyGdtkKU643pJZ3kiEGPXkhSp3RcwbbprIl4Cp59/7xI7z7++g9wBF/Jw3ZybiJ+yFQYSi79zWfx0EKa6YSNFA56iVF9aBCsIrx5onwTm3guZNEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMNqAO+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMNqAO+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F670C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774357493;
	bh=1U5q0qXulJlkies8VoRLdwMcdJTi4LTPhvgH4RHSc7o=;
	h=To:Subject:From:Date:From;
	b=HMNqAO+OHwG5jnBQ7RljZPDapUSBHFfFmzTSK5GyMi3W3duduEXls+KYw/qdN2FZ/
	 mCVoo65Fs/bcZCFoXVdwUNyhJW8yQvw7Ybw0TXYUCBaDU631mH36D2aAbO2PdFKZ7A
	 7nPd/zSMx4An+G5r3fwZ4NoRYy8ZzNF5Sq/h0fTtHPCDXFXIa4Nt23+ubFn3cBFDMe
	 6z6/C2HXAQhvE4EVxPQn7K1jCupWSWDTpOFeEAEod32Tfw+Y1qkRKZ9qblQcf5rpRV
	 kHMfZLQBJS3vMxymXlI2mCPaSEYw7mWD+p2JdEcGOl9asG09sEWdyWnmpZFfFP7s5P
	 r9KFt3xygL1Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD41F54AAA
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435749358.20060.14291858672364473556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea54eba30c768e5204c773da93c65300ef78578e657cf92299b89291497afb3c
Date: Tue, 24 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774357493
