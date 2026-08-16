Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517FD2868B4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786849834; cv=none; b=Xyw9CLU+/9u0e3ZJvenF7gPmDed+p+y/CxO5usf7qSVaz/d4XdfuyYQ5F0R06LRNpU8HDMi7mVD8HwxMTWeelwhZ4/9fqikdHiSWSpV+3tzAFvDJt8RJ6HN+d5ysucYnmgFIVnpShsxXnECJgDjMiM+o4Duwa4smih+g1jjbIVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786849834; c=relaxed/simple;
	bh=tafUz4S9Lzn8cs8QP78e0UPi6xI6bE4qqbCa8QLcKdE=;
	h=To:Subject:From:Message-Id:Date; b=AauzCFXhdhOLZvmVcIXliHhFBqvq6QlhexDtQ6cN5uHKn7ckoiiqwrWTMRJ3ExAIEopvSmoH/KfcErTSAUEhgQ/cV6kJmBo9VpOspPexMoVUsqrHyMPz+X/RBp/VM779qBi6y3OD018RoMnO0FXdmUUCIkEeJ3vfdyQVimlvTIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piM2DvE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piM2DvE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB09C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786849833;
	bh=tafUz4S9Lzn8cs8QP78e0UPi6xI6bE4qqbCa8QLcKdE=;
	h=To:Subject:From:Date:From;
	b=piM2DvE09bAEB5tzizIuhNFPsUKIRhWEW3Qvdt0Ueb68+9cuCby79MYs8+A01FtVv
	 dFwQP2xFxqno37zpa7znAJwOWpF2QkhXAgV5l+lujrJoqwr4b2wToJ58LOjPH7/Snv
	 eCjMYKXUShaaC3aDocxKc5/0N2D/xED5YXkzAI0yTwZJIvwYaXw+HxlKf43aOqnnMa
	 aYiHNl2wZLDoXW8aGpHIdd/OosnfaJlFcmpuX+SqBSCi3wpn5GqUDind+sPVV4OQuY
	 4HqBtw1RtpbNQPLBXlKpBCJjI/Mfb1Phpt0Nbbmy+7u/g0/OqgHkXF2TmT0SJWWwOK
	 02dYJyNmUidxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12D3C5CFC1
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684983368.1957.14131452519023403789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e600023e10b059a53214cc65dcacd156a4ecdde999f0f14c91796c38a5addf12
Date: Sun, 16 Aug 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786849833
