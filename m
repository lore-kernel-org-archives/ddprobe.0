Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A0221CC44
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744240794; cv=none; b=jI1ghCgy3atCFSeDzn72YuuK1Pj0uWWuYwPKzaq9di6CASL5virprCRF74KvJivAsdKLD3uR/8YR6buZDqn7pjP707CpQORA0JsDiC9/lZe0pwlf0BX3aZDTCQ9z7XQHrI5KUBNeOZyNzaXyB6wLbPFM1FMt6D7eTQSOtPY1CYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744240794; c=relaxed/simple;
	bh=WlalyzZGxZjZOB0C5zQE1lQDBAJwv15gJl5lmvPgULA=;
	h=To:Subject:From:Message-Id:Date; b=CepFy2cC4slpM4IMkLH6wJzGTP0Usj/L8FiXnfSgBt30BAKtutfJnalnt6RjIQHcg9gC+NWjeX5D1Pbj+cOqnV6VyiI2W1blq6STXknab6FRLSEF6R1RhIK7XWJx61XKSp+jvWk/TM4UPP6Otj/O152lY2R5E9RaZWp3U6O0jJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWuMhk/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWuMhk/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5221C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744240793;
	bh=WlalyzZGxZjZOB0C5zQE1lQDBAJwv15gJl5lmvPgULA=;
	h=To:Subject:From:Date:From;
	b=KWuMhk/MDBmDSGEIp5Zi1uL7K7+skosl3eCQsP4OJ6yoO8+uFSnbCMlFXOLex53qe
	 SXlwcRmdbPxV0nHwRZ3/wpHn5I4ripY5EF1tY4LsYyj125XRFw5GMkA21TU5HDQKMJ
	 hhqy/sBQCb/hNuuHjQIZQ2GU/wARZTzKwyU9g02OOLExL/wOgOY0HpzAWuhrHzUPNa
	 WLX4baL0j8dHI+INUjiyuG0TMGnmaeCSzMic1wtvobvXafw7+oeDZPCnfh+BJt9RKl
	 IuK6/n3QdrRLWZBwvXmWTMZtXS+ZEabm/EvtPI3vdb/4ceIbI+CJww6ZKJl4cm1mBZ
	 rX9H1IcAKPIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93262C369A2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174424079359.20985.15842066422801588137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6695b7f4a98eaff8c14d52e5e77325ad80ac8bee4cf5dd680882482b280232cb
Date: Wed, 09 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744240793
