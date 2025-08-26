Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193E30CD97
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756247394; cv=none; b=rY9/UAhsVl3GxLcl0n7kD49hVLhuAmZL8z2KSZACWvrtfbxFk8fZ+a5e/D7FMCWNKJ1Zw8Xi5/CSau/lN7HNLtii5yFNxIor4Q2GKQLJqGsE1/NjhBglWRjUqnlg4cO5BYrSe0EWxzOKmZdGipK17VtYMhjROiRH11WWae7d0Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756247394; c=relaxed/simple;
	bh=k4ETi3Vc0zDAAaAHE8WYTJ3Hq8V2GMy4hIqG9B0HHi4=;
	h=To:Subject:From:Message-Id:Date; b=Wrzu557csrQx304dd1SCE1Lsmfcjq+W4gaBi6mF+OHUCnfPhPp0Rpp95YUqeJCsd/uR3qElGnmxAhvvWAhQg/UNQ6V/QaNV7xmQLmqQVjeR6Li7kGReTj7PFXM789xww2c997rGzm4Be0jI8fwopEiVxYryvMJ8nj22Wmo/aSF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBSZ55K9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBSZ55K9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A07C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756247393;
	bh=k4ETi3Vc0zDAAaAHE8WYTJ3Hq8V2GMy4hIqG9B0HHi4=;
	h=To:Subject:From:Date:From;
	b=XBSZ55K92Mpv+Zk1zMhveTLOtVx3i6C3njbTywCIjv3zb5Ecw9VvWaiTvwhfspX61
	 n14e6Djrn8wDLs7zMNUnKXsCCQKO8OwXkyTxJsef8GoB9zKT0nSyY2XNq5vU3LyyD5
	 ZlecUg5Q4QNVKPwtxqsfNatzMEUfkNi8TXhUVY48kTvd+265kHT48ZBt/EUUCtdViz
	 mnXL/UCyrPSkJj37kWfSWRuy7EdWh4+OYleyZv8OeNxUq4kIXt9T6adIj8fsG59Y8B
	 DE3FGwRqXapCLIkgMmVSblHb6AOZLM4nOs7YOWKPjbAOLDf9bYPYXgPu4WjIVi2UTg
	 5Mbd12FMhH1iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED51CA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624739357.12952.10255693051485789403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2239f7a2db06319db4267437532753e169bcad639d1ce328be5678b1d952656
Date: Tue, 26 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756247393
