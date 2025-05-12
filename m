Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B64B8467
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747069794; cv=none; b=GkXgUD4DbLBE4TN3JKodApr73146FtSuA9pc+v5//kynbGlkFE1N5JdpWP30ClqleIRj7mim16Knu+G+OxsTKmQgC9HrO5nxXKSkJM6DjJUn7Aj4Y95P295rqexIhTNhrC9AsrlQgVnYk5GKHYvO4R8XGQjQKwKbyo0Yk2D5ZsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747069794; c=relaxed/simple;
	bh=gBYC28VQaz9EOVeOxPMkGW0YhLKTVMVf1eBZe3Ub+/g=;
	h=To:Subject:From:Message-Id:Date; b=C1Y7BLFahoVLGNGQRhLAIpNNyQg4wvOd8KEKzO7fn1gzGbUnPjIgdu9bBLWdlfL7MT4coyhRnkpBxOf6tMGslt5cTYZLbozi2+OLnzEs2SJuQyEPDzf7/qXEBZ6IA9jwXzMsvV44/4+7whAFJKiOkHV5HPVFwk2qwSGD2XLa/SA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roeTdlUU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roeTdlUU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A546CC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747069793;
	bh=gBYC28VQaz9EOVeOxPMkGW0YhLKTVMVf1eBZe3Ub+/g=;
	h=To:Subject:From:Date:From;
	b=roeTdlUUKFPShyVAiC62unpWjJhiECnDi7+P4RWKDFayGgV2vm9f9vN4xYuSII8gd
	 C3qU8hZxPkgaCpbeImQVP3Qj7ojtmZ2n/LuvHapOi1Ts1ENGnxHGEY4IJ5its1yHVi
	 aHGTgkOC109aXZSDJLVYlGR+w4qZ6X2WaF0Wu+VI0sF6dFpUR/8iiCQWUd6iiAVPbs
	 CfDuHHFwsgv1wWwTOvYxnUZl+H8OD85iyUo+GnRPGqyNkiz/FSXMbXij7aZjW6xHcT
	 ToqyE271UhSSAB/iwuhBg8+mw8u68TOpbeNJsKnTL5QNPnLAz40yVfcCSrfABEDLkv
	 iPrTAxfoK5PrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963D3C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706979360.13526.15237935430871765007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b1421ee8c719abbf60fb5699e9e903427325d014835e53c1fcdbde12b2fc9d
Date: Mon, 12 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747069793
