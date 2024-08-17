Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C35913DDAD
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723926954; cv=none; b=KuHWz87hlNPlO3Xdnh8PhKWqbRCHAV/gE0dSCglTDRy5vEN6UG5XWVuiyMX/BTvs8j3CbOAbIm4Ky4/Xrrnhv1qGmNYLBIUwdG93866T1lfyuKPU+koKjinLABaG1lY5MePf0akclNRbHqmHLLVZJzS3qFl7m1byjdc0vVlqVSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723926954; c=relaxed/simple;
	bh=YIKj1GFkQGJw3PI/LcZWN7WPSIFnvUdQB/1CxN21Nnw=;
	h=To:Subject:From:Message-Id:Date; b=h7NcwuB17hy1la8enRjmQe+zGWG+Er461tz44R7IN1IYhElzFPvgfFw/B3HjIhTCwSoO1e6zm+PSaSOZ33f7NZdtLmxKFjKgXJCTQwyG5RofxObUHEBpzkWtJGZ7QbVCpOSE9bRF9akitW2ikvXM9hNcgLzbx/S4DOmTftaQhMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UK3g+Igg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK3g+Igg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C6CC116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723926953;
	bh=YIKj1GFkQGJw3PI/LcZWN7WPSIFnvUdQB/1CxN21Nnw=;
	h=To:Subject:From:Date:From;
	b=UK3g+IggpZQqc7vyd7iUDhj2WGmH0gbVeIGfLeaDh51HZtmgXxBqGjiygU3O1bjp8
	 DOgBshGbyA1fZs+9szyeLWctn1RASUruUf7t4xTcYogJ//EurXrVzeFYMdUYd+URkQ
	 2Y9rSBPPArieu2CU5oMiDXZblJdacOAgrdNMryG0txgQrgRy5Xo27jAv+sI1MLGCab
	 2qgp+PEg3tnO6+YVlwOKshb88jnDwA25HcFrKemkLK8TYzyX9UXUTWGOnxBRgxSFOP
	 9MhOKlJ+kvIEFo3CmJvVhN3sFpgIwfGIaHB1Ox1I5DJ2fxgkxcaQlvMDQEcIIx55GG
	 Fse9jGoRGOALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40ACC531DF
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392695364.21684.9279819776385626618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3e431301ea81a68859edb84ec6d78591237350d5a72034725e16e206af381ff
Date: Sat, 17 Aug 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723926953
