Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769010F7
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727100954; cv=none; b=CGP45tbOK7s7MJbk4rL4KQ6GrMJ1kkG+EOjPk9jian06tKvTmJWvhjjOodyoCt5ijXO3um/A5vWGGo2/qlY7NKDUFUWKFGUanEFfl9G8RucxEmOD0BALMJn30MrdCvWi5Nzj/YO5nsBus50zQvsrqai/dfXmcje4yMnNPzuFB6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727100954; c=relaxed/simple;
	bh=kFLNewJFy/Vd1lYdbJ8A+eWn1XOf+00p23zDQylK/Zo=;
	h=To:Subject:From:Message-Id:Date; b=rq0frkVMbGqghStoCjOjvKDs0qta+yOBIm8Igte+8Ob7R4qPIg5FbPR+0Or+kdTRrAife7OGvliH3KqqfK2wSf93UZc6YQy4vTZTvtZp/Sywv1AJ38QtvpIhHdc8XU84golzjPDMSVQ2n4jAcxESuOzd6QkVl1clHHOf+sOiGxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPVOedmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPVOedmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C15C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727100953;
	bh=kFLNewJFy/Vd1lYdbJ8A+eWn1XOf+00p23zDQylK/Zo=;
	h=To:Subject:From:Date:From;
	b=pPVOedmIeVVtvpMYxdAODNqe1IoCbMCPdqWO+tnmHF7F/QqfB35S54fnItToAG9Wo
	 u4h7zQdv5hDADr2dkkFMY04mOfDzCAUHY68/zNb7RzBjxVjdly5qEBma9hpfKDgOyZ
	 ASbtAYNrN+2h05SeahMEe50znQXso36k4AEhkcUppQ8zsixFMJ+o0jAioTlSCmRXsd
	 tYXdq1jTTe5MnMjSo+ufAkSFG1wnDtpFKVhslAxCKxOlTWvDK8bFnEOKbixW+4eZhr
	 mCou7WVJpc9RCPKK7Igh9/gzZCmvIirDfiZ9x5axu9vmV/odM8DHMRFiHVJ3D2sY/c
	 GpOkMOI/wTlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92871CF9C70
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710095359.28010.1466687145429715403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760baa49cd4170d51a3dcd1aa2cf065e71b1a0c0cf06ce5e3cc3ae06f21b5d08
Date: Mon, 23 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727100953
