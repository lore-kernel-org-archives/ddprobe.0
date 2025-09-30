Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235DC3C1F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759193394; cv=none; b=G/JWlxsDKJAP/MkdliPY/5dswnS061zzDOhlgCl8dKfYc2IFUejOgJRmdqlqfHMKVj/Y/K+f+AXAXNsLSRX7k3OAd/qRQHwK2bqRgEHouj6bsufgpI4xLiWwclEMSCEFIQqyo9fSfKZDpwyjc/Eg+NXji4hDNmvCLsXyNNt504w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759193394; c=relaxed/simple;
	bh=hGCuLD2wyGikAUlpjEu+MQGWO5K1dbeNM4+8uZWessQ=;
	h=To:Subject:From:Message-Id:Date; b=eyj5YKID6setd4ae/gfARFwumkQbebMDm+J9hd454PQcZQvLqi5vOQCueZEYk/HhGV/31L/OIEbKjX95PbHl8OADd+LCVf5egWE9sRjGodmz3irM7a2Uxw5SMnNfLNOuq6/TyYAqWx65bF3x3S78gZPRUtVT4g5Czj/O7VlVa38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ug4OXEnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ug4OXEnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EEBC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759193393;
	bh=hGCuLD2wyGikAUlpjEu+MQGWO5K1dbeNM4+8uZWessQ=;
	h=To:Subject:From:Date:From;
	b=Ug4OXEnuwxH84i7JR2x+s/a7YM1IxD/EUNcTvsZHOI5t40ya9srtc7fYxvANmGQRa
	 k9qTYKj7Z93/eAKnzSNWuUtcnxkRecUhInDcJoKNYrrNZ8gzqcaNHjD3zjZeOn5PeT
	 SvbhTvnxnD4ZQ2NuUeKHu7vH3aWiypeGB3i9chT7Daq/Zl+qOKjsEYvYA1fyjCjC9i
	 814ctDbzpqHUZKLe3D/w8/FMxSj7KugRTfj31OGJx9AjqE5wdPdcpbXwWr4yQ5hClz
	 FehexcIcyAQFPgkN60d7m9hgkz6s7nfyYI61p+km+Ab5qsTU47eg9TAcXQlMjCZH2H
	 B6oqywVhz08bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B24CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175919339358.16176.2288175918212512176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4510c51091a7ee134345fafa19b129499096e3b717e3bbd27a857ee2ae00e4
Date: Tue, 30 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759193393
