Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFC52DE6F3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756369793; cv=none; b=apdfgs+upVSpCxaX+LGImftgJyX4M41mBHp/fsKPwQpU67BBGZs4TmUuSyo7aa0RPCeCnADPXtiCRyZiRycyR4KwiAuGAW5Exi5gOpSKxft/DTTESYMTZZwx0Wi14UeePr6YqMyTZfgPxsHqGBB7u48QL11DL1SdxLTOldXz4zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756369793; c=relaxed/simple;
	bh=XaW2IDfNVttZoBsHwGNB+BqEgMfzTjF1yoAEUVQwDrE=;
	h=To:Subject:From:Message-Id:Date; b=pgQ/hxjkAWg9dDrXGtMv+H1Z6nkYfYH1ZBBWvQfOjbReOZtr4StIPGSLH0bbDc6Nv9bzcIQVz+vgtxYGDJAvuvqkuNNqPPuWpjI86/ttEvpzf3y2WQqIFbDyfQeCy5q/2SRz7f2O+5S2/VWPoCIDnjiOCbvJEXblcEz15Q4oi0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QaQqYjkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QaQqYjkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D3C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756369793;
	bh=XaW2IDfNVttZoBsHwGNB+BqEgMfzTjF1yoAEUVQwDrE=;
	h=To:Subject:From:Date:From;
	b=QaQqYjkLpC7/Oaee4468qT5pfKjf2hMe9/XVbMRzvRNj/F8gASjEej3OzNHVbAg3E
	 xGcgzDMnzxFZA/wq7VU530aVZsbL/3D1ujLmwA9jKarrZIPPRlVtRkTnoNGWLM57Uy
	 or4Sl9rgvUacMOKtel/FukcWP8JVy6tHMhAZpy++9u1UydCyH//vAM8GzsTYinf1+T
	 TRgI2p5Q9bYTtrQYH9myNquugFePsCsgvTMrHpaLVb/BGhO9AdaoX/T8vu8I8BYADz
	 h63+A1L1+DrHz+EuKj9AQ+LBfomo5bzFwK4AgwhDb6GOrW8vqmYfG21mo0Pis8khUR
	 rS9Fnu3uxRBhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD03C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175636979357.18199.5356724272054851513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0ad425cce7c9b45276a4166c08905e87896808b06e3d36261cd840bdab7cee
Date: Thu, 28 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756369793
