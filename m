Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2FF29E0F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771360493; cv=none; b=j1tMC+wJjZTE/TGFzITu8KDD+LjuTXCrB5n5GT49qA+6bgiQBX/cvnXCA+heN55iYZKvKHSH1ShlSOYnRVgZmu3NcG5n2FCmCQk5ejPKAMYE03tokaA2CUwpFzx66DHZCpzOuKMehc/Avyw2FkaAM8mxn16Id7A/0qrf6U7VLOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771360493; c=relaxed/simple;
	bh=Hul95hHCw9d84QwpOaPNxb4ucL7mrAfsr1qEeYJq1K4=;
	h=To:Subject:From:Message-Id:Date; b=FozaapjITzDOBJ1aHRHEOkg7S3UWKmzoRciLkEASOMadF/5lmYnH8CzL7uWw+IEbRvyTWgn+l+cHE4AIRLTe7c3BHZY0+BVG9LsabNS6CanyoRuGhcXk58mtpTfx/hmot7E/WN+YDI0mKy9iFQMQ+kMO627CI50HicEK3Q/YN6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCPHLMKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCPHLMKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771360493;
	bh=Hul95hHCw9d84QwpOaPNxb4ucL7mrAfsr1qEeYJq1K4=;
	h=To:Subject:From:Date:From;
	b=LCPHLMKc2r+nFYjRlNtXjnBnpeFpq6EBhb9Fwjegs3efPzidjnDElltiO1DPmzMCR
	 12IvTIhrpqcKmoIVFz9IQ2aBFdRLiVtfDEGgT7/tZ4wn9S3UmJQsnGJK0UyQ3PMYpR
	 aCymT4tYuuYt2r83u3fauGDzuZw1X7xBNsOT+lg1QAgnmLZGVGijJNX58vhORnuQ35
	 MCrDostm51QFOjbGwZjJ6sBpIBRiXAtfanvjzHxRjp8kkbrYTxAq5ZSmmKJDWs9wKN
	 zp33jKT7Vi+c2bIt5I7ojUaHjyB1XswLkA0GVJ+QUe2QtudUI7KTo/3dKHdNtt12h2
	 9jcgBVzi4I8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D80E9A047
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136049359.28468.15269515569273792234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67fe9205183233db68ad03728d3eb1d5b6739d42c52b08a1f6b3841c9acbe47d
Date: Tue, 17 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771360493
