Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBAB136672
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774130694; cv=none; b=BEpsSU9kr1Pf52PWPpPnoEMDF2r8NEmrOjEPZljqcx9sq6o8Tgm6ubXSsrNiHV+gQezORhU2j4LAYzTLN9OOGtIqn6tZB9zbbo1uLWEwAM56Xb9oVoR3MiOu8WYtVZUoIr/8MKtlvWS0FOQcIUYmU3bZOEHW4/x5xU1gmIn+k9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774130694; c=relaxed/simple;
	bh=cTcaF1OfhYQRIToDraAzeKjcrQ8Y9nBV0TMaqwJ2+78=;
	h=To:Subject:From:Message-Id:Date; b=K01qy+fNfImbyDEHlrxa1Z7n0NIy2rGvX2LPV9EdpyzXBScQA+Hk8GlMOvRWAG4YJbxL4ARIHujpYGAS9X9aAofSfraivBLkAqeOZ54s6zY5CIUD6U4Qxk9mf8cVt5+hQMeKxcsysf9cIJxMTysBUe0dOS9weRLdOKVqxo9OTmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MYRUkBej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MYRUkBej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FDBC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774130693;
	bh=cTcaF1OfhYQRIToDraAzeKjcrQ8Y9nBV0TMaqwJ2+78=;
	h=To:Subject:From:Date:From;
	b=MYRUkBej/fT/Wda9getoYVzVDCYbpKzUtwvyhBVb3MNmBQ/Exa6o+f8pTGuUVjkOa
	 fj0oskCG4bxNgILXgnhNMGSEwEdsF3SVbYdiLGu7vC+NtNaLi+cnTCf+vtT600SdoK
	 fWaJgJ19kSkAm2ImP37LPBJ7QOz4JemWQSHqZAmMyaq0IIGF6a8C3ecw/16tVvcSFB
	 F30fFJi3nDwfFftsXeDi8nQwArl5UcV0HqaQtCvPelilCO8xWvA4e1+HO9dPAOy9GN
	 miZgPMHcABdOpptPjl/khkISYHmuclkXxSXqSz6lPvrYFZMYluEfnrLw6YuQSHJ5h+
	 6faYrAsQKvg4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FD6109449E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177413069357.5804.8457823687091051009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852eac28e8479d1ebb724e64ea82851b574fed08671a32336ce44bfc69283e96
Date: Sat, 21 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774130693
