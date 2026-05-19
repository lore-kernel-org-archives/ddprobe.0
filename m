Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C6536B042
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779221434; cv=none; b=RjjRXXiDKBp8HLgM0/yM1t/BvLQRg41kMvj+KHVuEgGJQwC6wOwOT+FzJI0yuisFM1nE/nz9MG+Y6FMhRpRpRMGqsTLG7P7uLXnpghzf8QYVO1k5hHxOu+MdIWYYGlwqB00vPrf4bdzHFPDxsksFdlnMMz2gBPqkcHF4iouYjdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779221434; c=relaxed/simple;
	bh=KUk+Nu4C+FIScdxnC1nyqz4V3aeWd3it6NPKXuWIMis=;
	h=To:Subject:From:Message-Id:Date; b=HrMmjAJGJMgfc59XL1NXBuyrNesWT3IVM9o6wfFfkpfKUrQEZZtCNf0B/jzlgQimzdr2gTLmgSDfeGXuDZNj3a9YdDtXdZrBcAW/ZsKOJDlPEjgGPdpc6qlFBBw0iGyeH02tG/bWdWu2GvOt0lSHSOBuCOR0KP35VyaUY+Hj7LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9grry9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9grry9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4443C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779221433;
	bh=KUk+Nu4C+FIScdxnC1nyqz4V3aeWd3it6NPKXuWIMis=;
	h=To:Subject:From:Date:From;
	b=T9grry9dvncSRrST1TgHIgRxMrxcTFbTINnLkC7EqnRNif34IX1SkhRj0Hre0TG0W
	 MpqbyZQWvGP6BFMZRhSde9xkKjRn1fu6ajvK3A9PZKQpRQ+TgG63zsTvhHMGqIceuj
	 5of5gg73tXjQBayPAXL9q7kPFfuhM1NzgXdeMGP3UO6ZuiJESe0XZYUSw85/44ZCxk
	 lQ1jY7PuizKNFZdmw4iy9RThIRuvEmZl1JkNpKuibnP5XixGjgzkpWd6KOnzpzfDDa
	 T3cL8Q905jvI2yYJfBnQwb6y0oxqOQxn5RKG2XyHKOHHOec96uXEEvvK9Jc7//i0Yn
	 OiGtjaGFD+hjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E99CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922143368.15609.2399152620716020327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f2841f6376626037282f3387572f8c5803702d40b3674568dc8b3aa688fa080
Date: Tue, 19 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779221433
