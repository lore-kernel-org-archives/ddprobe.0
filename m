Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0A21E1C3F
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742411994; cv=none; b=EhbVvDZigI2yHwoV53xIZbtG/VOxWD6tnaEio4suBGRBKVw4oxKYCDMlBPgIlhsoDpAuyaX0yvmM2SgNjpf0HdlWAq/sWLiOZcYBptbArBfFOg+IrSWHIEESczAmzNqlj4Bjq5r+ZZq37xX6K6FOgniIT7CRm6kd6OsZQ+/0gbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742411994; c=relaxed/simple;
	bh=49E2OhhTrFpuJGieuvSsz0oxF8uYqrYmMqxGtFh0S0M=;
	h=To:Subject:From:Message-Id:Date; b=N/p+KZxkyw+5voGQTmqm3hl0VxuBiATTMhKfQ6320i/4Sm4AhFnmA/V4stCOMTD0JBgcxT974QaRW5EFjw0bS8mSCF8SDEDnM4mSw47g3MU6zWEjixgITz8QmiYa7MGtYIC6sJWiOS/6HOxGjnqnH8CGOzHOMoKPTyxDp3PcHMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/mSDb+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/mSDb+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C84C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742411993;
	bh=49E2OhhTrFpuJGieuvSsz0oxF8uYqrYmMqxGtFh0S0M=;
	h=To:Subject:From:Date:From;
	b=a/mSDb+aCE4cbxC8rhqDX6PzhiuAipwr+7MXPExTT4fMs6zm38VN+5JCXfMnoRU7T
	 RMF4pNW4mKmdQiw5XCaK3cG8lW186QsqASNA9ZR17fr1By9rh/jeie77sq/MLB+Yyw
	 7oK2A7v3RD927Inhs9IT8+tOce6FuqaO1Mw+d15qLPOKlV7SWB7YkHEqDLVsbw/A2O
	 kbX0pWhMLCbkkUk6hLyUJS0GEOwxoaQG3VA5Q8YUlcbp/gGkKB8LHMNR/3Rn5JGVl1
	 gHSmca38xVA/oLHNzovXZ81tjfO41X1k1FxoEWIEelUOfYljUoEcPGhYzRsuo3u6qM
	 whhtHe5K/YSVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03FAC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174241199364.5632.4519775710499658546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2286e4e92e21b2185a9cca93b5cd05673ddef8768c29c1ab2ae42d0f1e662bf8
Date: Wed, 19 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742411993
