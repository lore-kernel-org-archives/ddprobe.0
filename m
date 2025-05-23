Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB8A228CB2
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747997394; cv=none; b=EcZJOaGVZkS5tQweFThQbvAG4EoJRn8xR+lTgRFtff+j8JVEEq+fU0dVW6M/0PF9lzkfenXnQypbH65734l0zUqN9uhbDNi0RDOrfFFyethUSZAuNctmN672pgy7bLxZUMyIMz6YZWZsIEaqM+NfXeJHcZDcsACkWeC/EEIM/Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747997394; c=relaxed/simple;
	bh=UVywAUnD7PcmDjmzb22Pbq1Ob1+04x/QcEr0JqksIN8=;
	h=To:Subject:From:Message-Id:Date; b=t5v84zzvMKjpFkZN/x97j1hbV9DFfJw9OSFkjYoU6TPkoKwvnS3i++t0OS6j2m4HEOw6DaWiPZfcBA9BYGydYyRDHa8bBKsa2dVGilbHYE+YPvycoAGrZHbugNBVOqfLALckQeEs+Ar9eZzeTSmXspV8LN146O9jIvX1H8g3NsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3dCViRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3dCViRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AE6C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747997393;
	bh=UVywAUnD7PcmDjmzb22Pbq1Ob1+04x/QcEr0JqksIN8=;
	h=To:Subject:From:Date:From;
	b=c3dCViRlaZw5ouQnu1OB5YtodeowjAxhvTUvq7NKRRoii2F8EP6W2bqLskUILoQX4
	 MemiYcvZ31ZyClwNrqnUkenM8iELSUE/hXsS9Le8R7AnvMTRdwxfFnrqWwt9XMmcUR
	 q5HuLEUJWz+WLHOC6uxmJ3JNhmeUD05a4HBR9KAo+FHX9Po0kCFiNXmvG5e7b9sMi6
	 DNJfZWB8WQhEGdAaOCCv4IHfHhYF8RdLjsdoEuX0lc5NYo7FmPHvCjKw3eFiRIftne
	 fjqozrCqeTCX7udqRSwNh3elgCCV5J8U+k6FJ5e2B7Hpj7IM0ZmIf9hKVzwyLkuDuC
	 METJRUdK7rsbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D7C3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799739358.9027.6889304082597524492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3579989be285c22539c7d1327a64120524c311d09bee59af68f22dc0dcc167
Date: Fri, 23 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747997393
