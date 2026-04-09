Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF101DF27F
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775714734; cv=none; b=XGPHBfqSHKTd1b5gLCi9Z8mQ+PNDPz0NKOeY+0i1kdQ269UevsgWLn5BWF6er+pQbh7Y4I2sgymqqmgy2SP1cw38tRvEm7TwlkCTR+1t9MXTNP8NcAaO7tR48gCbWtgDmUrAhe6RVHg6UQ11rHCR6VdPQ3J4r2tlF9wbcGb2F8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775714734; c=relaxed/simple;
	bh=9/dv6A2v1j4VR5yfmAlhFZ3hLFtaSvH9twuMuYwSIic=;
	h=To:Subject:From:Message-Id:Date; b=Su7z8QGuqtLym9QR8ULaMybe/KtSsHuMyt3rvRzFdrvKBB9NlZzjBE3TB48MfAkmaJSEI5MraXakan8AQThAIOKOFCSgU5KuC7Nvac9AfOeFogvhfT1jVf0x6QJtQ+7GdrM31gru1sZHX1tA3+gjr3kV3o99wJlW+E2VY5kqBno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQltvTcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQltvTcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CCEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775714733;
	bh=9/dv6A2v1j4VR5yfmAlhFZ3hLFtaSvH9twuMuYwSIic=;
	h=To:Subject:From:Date:From;
	b=PQltvTcHTQMdzQJnBjlAjPz2cD7LLmV677o31RFj+GhLXCTz3e+q4oaZPK5XySr8m
	 UmAlf3KmS22r4SfrKRSoDSPoqiTiEMTEFJob2HtwtfCTal0nWaINUxuALCt5u+qFMH
	 /PrpD2sKr2KglA04PrVMieoqPjL6vGxHJI0gMNJe7vhEEQUkrtKhtnUB/XneJaDcja
	 E6jQCnUu/GFoSx1OA1UF54uHe/3yjCJwB/LY0F8pIprL1LRacBAcm8VWlCDVJSSmpD
	 3/+XXQXu5e2z3CfSX44EYHuyLhlerpJK2GDsuTa80Zz1EhdjjK9/z/TL8yX1jaXQIg
	 9UoosHTdJuxYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA689E98FB5
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571473368.16286.3383937475882662749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d574f09c583ad0487b286b86c00606446b07326142c3b50a46d4810aae2725
Date: Thu, 09 Apr 2026 06:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775714733
