Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3572C46B5
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754984994; cv=none; b=JfXjBnjw2By9OkHY/aP0DEvkLY6DnXGbhY8uKhnltLiVtgD3WjJq0ZbRGIRXgWLgVMwF0MDBXWDHj3TQl6/4khHpPWxdpDakjisuPPircRVmd/vMw5npSY6fWWIH8V3Rc9NfIFIluHCGqot10NgVnN6TJ1f6zOU1+lMuFtEnJr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754984994; c=relaxed/simple;
	bh=Ijbo6FWtcc9MZQxPQJG2e2lnU0rtTIXTWAArtTsWY+w=;
	h=To:Subject:From:Message-Id:Date; b=Y4C7ztPWi9fuFg9DEhUU9e2ncYmrmVNKeU/6X+fllDCtkCO1RNDak0O/9kJhoG0rSsNHyI+/kBnWBJkutZPYsyGPZhGn9ffW1+pNAdxRc8nccggjPjjklbPj9KUB7ugE7BN8fBz5HDtFgsf/lyhuOtXrqHz7eJJ8A737zDrrpFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUFnXlgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUFnXlgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DC1C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754984993;
	bh=Ijbo6FWtcc9MZQxPQJG2e2lnU0rtTIXTWAArtTsWY+w=;
	h=To:Subject:From:Date:From;
	b=kUFnXlgPsSRB4m/M+ZN721SmpaWNz+PYtLpn/vWn5WigYf66Yd/U4bONeXj7taDlq
	 Vwmo17Xqee8IGlRPC9n+QNTTxCO+rDqYWyryirSd6RAyKEUHn9ppT+20VaLRyuf7gO
	 5WnYfDmFgL/w8xXkEL6thHTTMTDDQs2z0jgGnOXJ7Ilk7D5Bv2KQCNN+X73g/9tysW
	 XtbN4CyKCAb/6Admz/haVQwOVD8zRKW50aNLdyxXFkFobKt54m/ivjU4g8GuB3XYXG
	 xyh2c7FbkclpWk1xv2hpcFCqjEl5aXuRT1a0KiXZrIwYcVxwimTXlw0S8p88qTVFeu
	 Pch5PQskAHZqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB08C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498499357.23075.17937352576096419349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a645f6c544ff6850a51d459926f82fe924697e60cff5152a34521ace8af71e9e
Date: Tue, 12 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754984993
