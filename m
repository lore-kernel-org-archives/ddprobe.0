Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3338437F015
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790100034; cv=none; b=sNQZioSqcYB9unA+1neO11WljEuSdKkCnCqBvpniWKIAl3NvQ8oqQX9cikftVvpCwKbbh1ZW3dR+mCGjv41JZ8oeh7LxpJjgvmzpcZCN9Q+CwG7t+3a9FM2q6u64dGtY37+Q7jC9M9uI6dDWFVYw/ntpLcjUjEDH/T4r1QtZDN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790100034; c=relaxed/simple;
	bh=AjhbODcngUmpW6ewQTz0207cKAQpcpsPKK0sqa+g8QY=;
	h=To:Subject:From:Message-Id:Date; b=jVA+ARbzdfg5aMnJ2d6PFOY7yhfTssYIKI4IH2NYileo1p64Hx0GBI4vtjPQEoLmgHDGjXZSjE0wYQbJW2/n32C/KxXMY1KUo+Ym68UmX+5noT4nSxCGJHLN99wFF/B1q+SBBVYcBLF5DcqktcXYWjGwdB88f0JjwwOlzLK4920=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsQ6JAjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsQ6JAjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E02B6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790100033;
	bh=AjhbODcngUmpW6ewQTz0207cKAQpcpsPKK0sqa+g8QY=;
	h=To:Subject:From:Date:From;
	b=AsQ6JAjWzqJguJPUK1niH17GetGrM63dFBCaQaRZ+Upm1yeICqp4B4eOOeKGJXaPU
	 MrR3XdVZKF79s4CwsPJBjOpmY+jBV60n4bkLk6ZR0NTqZqVZzWCxmcnU4/PHtGbskx
	 0jY5sJwT6RQ0BNJRRmc2veZua7nBNz0KIrNFJWPWHDbKvjPKbxaYbdjfrXRwlOzV+C
	 GaMIEqzUHX1mTX8IVDxItiEeSAk2A3NT+Op8acvWW6ta1fz4s0RS0GlfIR9eyw3FoL
	 imfSA25O8AqY+jK8avSehNc6TwWYqoxGe3nJvcqj1FUs0CYzs6dKT56Et5GxDpNW8U
	 KuiDi1MUosO9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9467C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179010003374.18050.17939169358354989157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623be87ff45b711346bfc7c97fd6f30f9859dd591b18eaf24dfbbc452282593d
Date: Tue, 22 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790100033
