Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224482701DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769280234; cv=none; b=Oh7aua45ofTa8+zGJ8bhRy2Cw/8GXaWWg0CT+k9SjKzWnCmyiVwFtDFb0zTZoUlWB3scYZQ9R8k9wyFeP7CpKZu/JJVGgKlH5rXIzFpQ5sR6hVXGGxoyE0pY27SPIuD9OHlaa9SVSgpUgIkuiuITZc8JWzNt9TRSmqwQwPFGp7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769280234; c=relaxed/simple;
	bh=OMYqmnbVtYCsP+dBcV+OqazzPSO4mHbG5cqDFu2cea8=;
	h=To:Subject:From:Message-Id:Date; b=bs4QhQh8kiQ6+wGjTb5TfYHjIvmOJDhXIFy2x8+Fwez99h7FgxmV268Pdp1HDH1+Xsbo8etZL4YZ2I7VSzJrP814g3bkgVnKGUyFaodnewk1yMUCLpoNIV+oR+MEFWzO6T/krLWrwb33IX5GLNBQ2OIoPmfqVaj2NkgZEQANEbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgaLMh2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgaLMh2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5660C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769280233;
	bh=OMYqmnbVtYCsP+dBcV+OqazzPSO4mHbG5cqDFu2cea8=;
	h=To:Subject:From:Date:From;
	b=BgaLMh2LfldRNhazpVSkhLBThkpzahAK+PAvy2/FiNo8ke8lPrkjKtElyQW1IW2Uo
	 PKj16TAvj/TK7KDcCn1zh8FGaj7wbt7dQ3CATQZaoq4K++XfEx+PAvdSPasS4LNhg5
	 NmetHPUHL6rig05zQlcrHiYEWThcZooHlMvuMlwlPSVpIEPwjrWhx+dUbyc+k+z4YA
	 9AFTQSCIfm/cRwhHUHZ2qSi4rGG5N22CPo0D07f27WexOC8rHjFD40b3Arf0UWBSqU
	 5xKSo4uwUhbD/ntsFrQspVEcDMYx1Mw9mZOMYadEI3yuuYUWdkWJYJGhjgMR4Nz0UV
	 5qm3JXiwikMfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94838D715E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928023357.25378.18269043874576949120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fcd9895a846e5a58847e4664af11e9e254f438d51b1ba471931af904eac81a7
Date: Sat, 24 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769280233
