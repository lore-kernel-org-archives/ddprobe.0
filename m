Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255463FFD
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772601294; cv=none; b=tze4ycGk1Qm97ecJ9w+HVCv2xIHWsVhM9/Bz/+YfeStX2DN8HIlrQ0g5NWTLmgH1TQL82jmSSOkkzoYohdKzzzip3SWm7xzUU+RR37AXddtFnfEElkyKUJ3lEsswwD9vy+74C6jgK5zDtAdtdxqae+AOHo+VG4bvGrq8KG14NHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772601294; c=relaxed/simple;
	bh=3+xHKesA4f+3yVxVak8TqvFXaK5wdhTgaHKuPrfY2eY=;
	h=To:Subject:From:Message-Id:Date; b=JiMYsS1HgmxZgiVfZRYGxzRqNI99AUR6VOWPUSztdLvZ6UwRcmJb04G6BMsLiTEkFrYzgRBbw0LrHwQx+9R7wNn5I90g4w7lk1UugOD5ucloebsJfw1HBUmWfaHmMQsdkzvHlnrqGHFkXe3bdDRsb0PkjNc1JgBF+t6Xih+8mVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAjwk8/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAjwk8/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8710C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772601293;
	bh=3+xHKesA4f+3yVxVak8TqvFXaK5wdhTgaHKuPrfY2eY=;
	h=To:Subject:From:Date:From;
	b=DAjwk8/8NXABMoTXvR6ZwQZl1sdI7Eog51knCVhSLyU2hueW3+bhJURWy0DZGF7Qj
	 916fpMDQ01ucbbyHRDxRaI3g3QFbW3L9iOZhDDjhKasTnsH8xcI9K7bb2TJ7Uo5o9P
	 X+zI85C2QqwVVpqByrOAsiJCTl3xYbDcd3WenPmYMtcOidPXY7TVgPUaqjOoAnVSg9
	 kHiV0sclS6Sh5HkvjI7h8BFFrIRgT/wJzhx5C9k4PbqFuHfh4UfFtria4AcbDyy03n
	 v9Rt2rbGNVRJwQfR+EPJELzr2GX9UjObZg78AkqnIs4ovpntYuGBuFe6lhkJYCIQda
	 zYi44ZoFz6/Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1426EDEC03
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260129360.27796.15249370607140404765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a91791f08ee55ea5fdc65b2b71af24a0596249f2359e6cae32a2b8f6dc8b53
Date: Wed, 04 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772601293
