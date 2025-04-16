Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F7F1B6CEF
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744792795; cv=none; b=CFv7NAdLBNBI2US/yeUlzE20yIMJpwYc2kwYWfFrwf3MvGgLOtf/M66gfZTS4imjIlmuo+dbFiAg1PH58OUETN3RlYZ8H6RX4PjvakvhE4yFFoi8B585XB2HQzWaJfRooGdjTnKKfB/y12E1YPPLt4B/WJ7KTNrKPC4CbwzdOos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744792795; c=relaxed/simple;
	bh=KHmE4axylGcCPe/FnR4X5C89LhlD7hUmYc/Ln9yxg+8=;
	h=To:Subject:From:Message-Id:Date; b=lGq/h0zFVwnr+Cc958V/o3XBKDJVBT4CiixyAZiu3L2A+QDvNWHTEzqCOFvcmnbytiMcKF+R3XOUnlF0tWEFAcEFGp6DYV14lOUsDjudBwn5PcPAScMaon0zkHUGcdtwvz/cBetPzu9oH6oUAemM/X4H/oz8RAvdZ8ltL6iINlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQGOIay/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQGOIay/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F09C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744792793;
	bh=KHmE4axylGcCPe/FnR4X5C89LhlD7hUmYc/Ln9yxg+8=;
	h=To:Subject:From:Date:From;
	b=FQGOIay/38GOQ9Il5JDn0lX0FHp8xTW4oTK6jw0+9uWfcSQ8JTxcyaVGzs5O4MoYw
	 WHYSTT0EdnQMbKKUU2Q4eY0iWG4ylv87PlJecCeFUSASO90dY2sZJMj6xPeCV8Whn2
	 tN2P923Bt8/V0DVWfEMUGLaDWuiIvjZVC5ROZK/hKr+R88gceNnpwBhHPAdw+pxKUd
	 jDW3ewS3vLWzQ1HHBBgAKOJjcBb6BMNKCbCfkg9tM/n3kdxjuEy2P8eCDQfK1k4SQx
	 qJWDpm5NU5GhFNLU/50Mh3ohSOjHz9FbOSTtzpqW4GQPOyBkx43oep0IQQrBwYZ5Fj
	 YtxD6vJB/M+Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92225C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479279358.12589.9708127407051617725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420cdcfe8af27375855836e642b14d498027a161083f8ad1368b3d70f6405e25
Date: Wed, 16 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744792793
