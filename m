Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D2D2F5A0B
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762827594; cv=none; b=p6Z0pgkhdlBbUvn+l+L8buTZqQJqx8NkPjL0nUWybC6TeQKpSFB+yM1dnJ0Pl7kR1HeLN0bNvKVT4HnuKCi439UZLcjNBIWa5jYxkwEnvp2DHIvs5s25fZkYU4Rk5x/aqBNkAS8Es2g6VlPUOWZNS1QgSF6DzTQPb7+y/nBAqgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762827594; c=relaxed/simple;
	bh=Du2/HOBye/hXNwDuIdvRaY2QaDzyfCMQs/Z/b3OlJhA=;
	h=To:Subject:From:Message-Id:Date; b=RpO4PMxBhemlsHm2NVhnEmbx2Jf25r6KmAzyhqgFWUPlsukpsivDRXs9foXH/Fqlmn0wgJ5ptxtjsXXyLc9nt94TBiN/+dCtik0Ny3y2bHQhTf3ykyBRYbl9ehiYQsefKoWryWiJBvwcokZ2KBup5PdWXFOxQy1X/FEtItLWGl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcDFrvoN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcDFrvoN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5437C113D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762827593;
	bh=Du2/HOBye/hXNwDuIdvRaY2QaDzyfCMQs/Z/b3OlJhA=;
	h=To:Subject:From:Date:From;
	b=XcDFrvoNlQ2AlyvlQp4b2o2J2l/Q3dVftdSCBei3iSr4SRjjPRXDuV8Vo5glCLvda
	 RqK707YpJQlGF8cRc65JnISySiNI49rRwTKzzaorVb+ZxiNgaSCQUGLxxe6h6mHO7r
	 PnwvCmfzzWcPyvn+AlPuTR3R0x6tzLPLJyySHYy2Orc4Zz2Q04DJTVPWmy7N3XhnH5
	 6CVuXxAHCCn/d4KZX4eWc4OaeV1tJgfladAJnG6u8WBZFEQbjJk1KU6XGH7Mu3VarD
	 Jv/b+p0FzfYXmpcng+pTAOjPn5iKAvzjFgv0dp6MX9mlm2wy2bAYWyyzITQFT/zadu
	 AjeeKV0oH941w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9855BCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282759359.24386.15398851955260406615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959f9615cd257df3ea30095cf36fa50faa8f270893a598eeb26a01e186a94bc9
Date: Tue, 11 Nov 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762827593
