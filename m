Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5EA2D298
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705744696; cv=none; b=dKAjkE7K2wAC6pI/9bFwl7tVTMLRsmHO9x5wCV5UOhUDYIMuCm8vE5PqT+VoL5LkRjAZZg3RJlqIsmp8D8ecOyZG2gXBSN/pPdTOjGCpGnCrO/k4VHub9S2JhkoaOk/dtFEFNperDunA6UldL9Iu8PNeK8gztaIoe0pJIIl2wBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705744696; c=relaxed/simple;
	bh=OaAyonw4LwmsnkyliMr2MxBYr9X+TVbPcDSwOSFPd9U=;
	h=To:Subject:From:Message-Id:Date; b=EJ3uxcZM6X5luso8pcqSfApi6FM4QTFJ7pB1bzGms9dKRipX7fZ526lqaxJT3Xp1QVhvLWTyVqYjFrCYtmwVK4DHgzyHe02UJPLfCfPns3CtvmwIsDO7qxjsS4EGMD10MvqOPlfPFCd+w9kQryKAYyZwvTtnVXBddWe5SLwgz0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtDeiF9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtDeiF9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77126C43390
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705744696;
	bh=OaAyonw4LwmsnkyliMr2MxBYr9X+TVbPcDSwOSFPd9U=;
	h=To:Subject:From:Date:From;
	b=ZtDeiF9Qn6C2rrC/Ezf8t2Lbnf3irPjR5VfAO9KufBOdy68ejFMINOhH3CtyiSPfy
	 UtnrQbW+yxW62WReOkzFSl2Eyb/MXHK7D2FcMFPoQzjRMG3qQtRjXlTHHTD6yTXjDd
	 NXTrnzpdtNuFzRvw59bJ6OGaW4sI0UrP+OMpd07vTowWlJ3hcUEeC5ihYbF2uRnb/l
	 0ZC6b+JEjLwUc3m0PFzjWBnIQ7K37b4RXPeOwOHJDbEyfEGazzaOSzAudqOoi6KZne
	 megSVcprngokZVgXOqC6KYBBCulPbsLqf8YnNv7eX/Mb8ZYtx1Zgo50ir/n/rsbG0Y
	 dfK7PWGaj7jqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC03C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170574469636.21822.11417123498706468448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c3cf8e2e1a32069259c9a13e77b5b6329ca527fcb116b2795de612fc9980b0
Date: Sat, 20 Jan 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705744696
