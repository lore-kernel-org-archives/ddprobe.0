Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CD32882D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749212994; cv=none; b=cuN3jTtFYGzTjrHSPHnJPByBwMOgwUoB956YqL/v/o5sSmeiVJZlncZcWbPHnh7FfEmMYvLEAFCH8rwrnGy05NDghw1XNeHq4yec+CBf6F6dRiK3UJBeq02ZmKhdKe9EAJffCRR49z9r76Esa2BOj+YSHyGo7LDcBZwFmDQhNPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749212994; c=relaxed/simple;
	bh=gjBbZ14cg0tHJlSHr49c/ixLtnDJByR/86kd/SI3PEc=;
	h=To:Subject:From:Message-Id:Date; b=IyozzSnzFvLe0qrFkmp+HlJJ8doIOd6c92ThZnkVMNAhY6Q+Y753E2+lxHZLcIn0eBoZJb6sM8tE6lLPQk2FLSUa3TRboP9nf//TssQQ1oba6OGq8eKyDsxnuWX64Mgot1OIbPITug4gw0f47hzAjyJs7MFbrOZ0J43QRW2lkrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCNZIkLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCNZIkLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA97C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749212993;
	bh=gjBbZ14cg0tHJlSHr49c/ixLtnDJByR/86kd/SI3PEc=;
	h=To:Subject:From:Date:From;
	b=jCNZIkLGEEyGS/p9XZnZxQjHGRj940/EuiQdJW4iwQZayoV9nNsNVRfak1VDDhEov
	 3viTGNMOHe4OERxvrDp1/F60jO5wElhsfwNxPuWY23sGi8+v0LvF9uABWkv6STuAVq
	 2a0g263X6823wpkEE119EuJ7cN79xdn6rHl4HqqQaZbY3hJU+PNjfLABEk6EkuwT4v
	 0mXSRSKjJLJmvq+XXCNr6dgruIrXx0t2BMoFeXCaY8TSrTcC5oA8UgHVBBtutZn9gg
	 OUXha6NGOWYoeFSF/tdQfBLmeaOgBV1/D68eT3m9ybY0O1WWL/mhr7mFp0ItTODhQU
	 VPCIHSuOdV7Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFF5C61CE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921299358.7415.16182702400523902641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61708cba71b477203f9beed286e0665f92d29546c55a8b4856decfe6ba382a6
Date: Fri, 06 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749212993
