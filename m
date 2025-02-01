Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EA62F56
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738425954; cv=none; b=bXZRQFKbsWLIzro2gFMgFl6Z2DY0MvpB6CzgsThJaYKz/+PBIb2afss8fJg0zbNeQZKEpi+Wq47SpOSTpdDsn/9tEVO7x1lNs9/hquv2PI6dvEFjn2YDuQdB8xUKCxFGYeZcMJU6l18sucG5H4NhsCv85oQU1TtCujaKyyAXPxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738425954; c=relaxed/simple;
	bh=5XgZK7Kr6b173FwR7bcVEl2YcaKfvxqVeRUwLOcg+dQ=;
	h=To:Subject:From:Message-Id:Date; b=jA91/CNcci13CrX3p4h2oYeC8uLFGyY2QMC6HYSDWujQ/SUJgDFV600HydNlkzpfpJwIuNIi02fwg/TRO0eD0vx6tsMar+yeGMiMxd+W1P5bmrQFI+J/EKn7ZuifUfX+xVCwniUB4Ufpewa7R1FOOnh/o0vAlPKDZ04Fn69zB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNQnf9LZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNQnf9LZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7420C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738425953;
	bh=5XgZK7Kr6b173FwR7bcVEl2YcaKfvxqVeRUwLOcg+dQ=;
	h=To:Subject:From:Date:From;
	b=FNQnf9LZ5E2CcBKIflBYGIDKNYilMTn9W0ewVfgz++iYZRqoYFrqc4evBwlrbWVCu
	 v784VwStIukp0KNJVLyW3BCgo2jQzZ9nrOQB//KpQpPFH2pKTyY5lB9JoGMJThq+P4
	 OT/yyXPNcj0fz1dfDIop6KF85QZwhDc7NhYhTieVCntl33Qfu1+PxDv4AkWUhcSiy3
	 eKqPKT4GSEmDx7tEjMu5n3WzpnJWDDLq/JC0o3AsJLcR3SITB5b+aIYbshxlSrtzNR
	 FkZrnGYxccfmZ28BYxrcVzEfSTMrYRQcHqg0n70DmZ3d5XQAl5SPorCQ+HLdOw3xIV
	 m7vS9GO4tnXcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A536FC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842595363.7605.12388029893477061615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41bffcd0877c3a1b5c0e7318829ea41dc2cec15e90f30b3ac070ccaeb1c57d5
Date: Sat, 01 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738425953
