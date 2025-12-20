Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2297A2E40E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766245434; cv=none; b=UbawSnUpkCCJ7bzQM852wDmSwGD+JgKLc1Fz3VUY/MhSags5rS1W2Bzuo6gVa3VEW/cIuW15TnxqIOjbXCqrUGFJ/VcJxL1HzH6AybQAfp1XH+3kc8JEDCh9maOBuAm31lODSV6txNFEwLV0uBn2/rPMKoqwxFiI4HPvE/c9ITc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766245434; c=relaxed/simple;
	bh=FyjEATTuy2U+Hq6qSqlNtUwqVWJh1IbqwB+ITSE3ztE=;
	h=To:Subject:From:Message-Id:Date; b=nKTD/4ZiQm52h+gKGv1oqMcri5x4eypc62I2bLyo62z48Xh1zVcjX4MkHZnd0jYsrii61hAnxgAXqHDRDiMD9Rrd7zHm6boqfjtnQ/D3QZg7Mxn75xYEUfpoigL6Q+04U58kL2mia+q62FPCyyd23JU7veUIzbmhjkxGhRei2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScXlRRqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScXlRRqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3C1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766245433;
	bh=FyjEATTuy2U+Hq6qSqlNtUwqVWJh1IbqwB+ITSE3ztE=;
	h=To:Subject:From:Date:From;
	b=ScXlRRqzzBk1IFKDnNVUxa7xO0qMAszHK3GxUGmFEaq8+ZyzVygmkKNN3F9uohyGs
	 pTNJagLtCe6qr6kwV4UHYriSSE5APHgjMU4r0sDi7udED0D7m6uIXe2PqaoK4AV939
	 AbZl22tXbbPbrrAzGsG2bBQDu1/lYgT1O/2Ziw7sL6D1njDLMxsFk+/oYdraiRsvAm
	 TBY1FmvyJd4sM6+UY1j1ab10FTpcEz71uuD0VtLyMRc5L07nCmyaRVboIZVxF3ukCv
	 snf5pLqrHimqPX4e2lWn3ZLZQpPzDe1qN84wkH+sqBN6UxR+Kums5iSm54hgpMaDH7
	 JVEKokReFoT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2CEE668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624543360.25417.10908316420625507974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234ec7a200df8b3a4b83963c220bf05cb9402f869a89259952a4200885fb570d
Date: Sat, 20 Dec 2025 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766245433
