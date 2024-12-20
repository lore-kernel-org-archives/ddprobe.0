Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9C229405
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734711354; cv=none; b=WABhuahimL3muv3rMdOvuP3kfdaaljKVXkuxn0jBu4+0hReBGnsuSE7cce5xs5rW5Sn7D9LxWhB8KZHKL1YTbPfmRPTYLrM0SXwX0wnjH1N3nszYni7uBYTp8HWprG3GOoaqAaP+2/WS0B7c2+22cj2ulNT2GW4BAWsroq5m1Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734711354; c=relaxed/simple;
	bh=GIYJAzCJOg7q1D+QUXufK3EgojSi+WzC71iEjN+lk0s=;
	h=To:Subject:From:Message-Id:Date; b=vFqE8dKwR7gkXNX2H42GD82D8vMU+kpETMCXcpMEbSjfwylHPhwMkqFMwaaaJkEst5EZzjSf5ChaNRX9D7PalMeAVXT3UTPK7SJeiBlmjjDtYcqocvdmHPD4Ib8hLFe2hKE/q6jZC6EcBWdUlzUh8NLDwbDYeCD5JkNHKXFmfdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR9Rsoed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR9Rsoed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DB3C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734711353;
	bh=GIYJAzCJOg7q1D+QUXufK3EgojSi+WzC71iEjN+lk0s=;
	h=To:Subject:From:Date:From;
	b=eR9RsoedByPEQS4EgXqJSGig9PN5ajNk94IpGvlr8MsP9wOAgySxTAEpA7aqn5hE0
	 aijAPveUVRIfjSi7JUDUOV1hTOoZgV6qEecQQ7cnqgNjGMD+NAUCELH7daEBtTG9C4
	 aMD6fgpTyfc6z50s48uDa+E/IgKFO1Mg6Zi64L1ESRbK8IUNalu0guKrdKpqwMG8r8
	 lrNTvW8AXpCsL/0wKMtXj9mXOGB/b6/d+P8RFqXLssbvoj6UBWEavKBp3XAImJYbko
	 7gc+Yq6RQwV86kyN/cqmoPDolo1L7sYPnz8csxJVu/DX3tWwjWItpIaCmQ5B473MiH
	 wEDC3ghyAXffw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CFBE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471135359.29279.5404770853273191692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a1483d29dab2920e7518508dea59a572154e8bc6c9f66d056f13919a772931
Date: Fri, 20 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734711353
