Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D91F5842
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763910114; cv=none; b=EUTUnLq2OBXZyrTm/tQTdLEtHpM2Bj1ZfEIJlhMFrJlAHQp3Tlr9rS7sW/5fVACPZrXyqbP7ISOlkbdE/JzSCGFkN+Mcd328u17fDDAT59okFsZgLWDmcZ8+Yl7pZt0UroPMSmidXwx3/zRe2wi35LU/pRf0lIJcxtNoVrHycuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763910114; c=relaxed/simple;
	bh=iMACDAdzGDAmqo+8+u8WbB20y7k/dOAFbQhYxRKbIaQ=;
	h=To:Subject:From:Message-Id:Date; b=U8Lgi55hKidF95WXOwxwHz8zKdI33yLeYTVPOGNtyYcCVybC3Up29XP2XVfvWiA0EYnFz1tpfNMIreCpfEEY/We5mCs49hh3D917ZVosjLwK32S9zrjDGUF6o018n1TQz2x7w+8D9KnioPCOTrD+3O7eGSRhoh4x2NVtDtfykX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4/fV4Lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4/fV4Lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A98C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763910113;
	bh=iMACDAdzGDAmqo+8+u8WbB20y7k/dOAFbQhYxRKbIaQ=;
	h=To:Subject:From:Date:From;
	b=q4/fV4LkXpVGLEbcVrMCJHJ5YfKLvhY8MkbrGl9H9rTqtTCmm7x0dAKAM+5ez7jNn
	 LRLawA5J92rPk+elY8cQHa2aFSWmLi1GNpKWcHCui0S0pY8KyRJ1vk8iRKFdob3zVS
	 wd0FBpYS5WIujPS8lVHG59MsdQutfkfKBBxo9PP0CCPCNRcWSz+sG1DV6aUCqem8+F
	 ONVjeNTxj+6XY5834GOoJJTNe5IfhivZ469FOMPxTGS77CxT7tftvOdxGXoIoJCOoB
	 /D7hqRBMGaNWEMN3KzKda2sf6TVmDd+WiatiUycN9XkbNjmmC3CDcsZG5HSHtKXRKO
	 atRKh+0/WtYkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E9ACFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391011358.30532.7562681230084817761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9900a400b9d372bbec6a053e12340d162ce986306759ed498331edd9f22853a8
Date: Sun, 23 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763910113
