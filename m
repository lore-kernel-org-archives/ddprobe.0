Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BED93FBEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773334494; cv=none; b=XjhhN/ui56eSxNv3kxbkeZhEQQ1Htn4xA92LD3aSK1AeMnrQ0P7ENMQUhZHf9s43+DN2V/FacSd5pZJ1lsxs4Ns+ojBktFi2ZDiQqcG+vKw9B0jGtHW/o5zYhONtNA6w4IKRnIM3kVNxrsYgPcDsSBHzbiLKhIwsALf6BcDVhQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773334494; c=relaxed/simple;
	bh=ziYTmwWgONwBdpSKnlKjwLFqfP3CgJet0ZOvO+4MaHA=;
	h=To:Subject:From:Message-Id:Date; b=iSsF1HseVH9pJutWWw7+6wJPAu3DbSbTYrVQXY+tvrM8zV/o4l61SsANz/GdrF2IJUkFLyWCrsO4mgdjG4m0NkdOSXACqCDw/i8yHkfqUFYtU3uKkecXSUZ2UZWXbFQMn1Vsf9VdwhTzPSqlyPpCK+F5AS5EvF8qAJM++5+qmwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/JIkc8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/JIkc8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E1CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773334493;
	bh=ziYTmwWgONwBdpSKnlKjwLFqfP3CgJet0ZOvO+4MaHA=;
	h=To:Subject:From:Date:From;
	b=F/JIkc8tbPvNyjE9tW8BEwJAmDcae8u0F6FCjgOuBxDLxP63NNfyIRnqIFAtuHBO+
	 QathCaZudpSPAemY07P13/wobyEG/VQYzhqs6W9NdsUmxBZTEU86Rq6HZZzDi3iF6L
	 0blww1z2uOndaVjzN5A7Ota9ALGnVhTTbLSdcEdPWBhEt4XHxtWpROfx6IJReognSc
	 GvDFQyFzf0caDephGfDT9u+EFZlJ7OWZvctIEWf/+v73bbgkuwRxyDrhTnkmq6rhWa
	 dyiHe0OXPEBO6KB9kgEqsajBndzDfeVQLDqW/CydQ6EgrrPKhqBDAUfgMHgY6+CG2K
	 2kEthSssVxyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FAB106ACD0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177333449359.20537.3641180693325072142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 912b9e48155eec4cc374574517c98e4a06583f39d3d39367d4db02b801146bda
Date: Thu, 12 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773334493
