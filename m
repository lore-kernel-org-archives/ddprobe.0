Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D118632D0F2
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765835573; cv=none; b=FHO3l10f9pVxqhlMl8U0R3tqbRHrNCiP6iycPdrLAry8tRYD6Mwkpqwzf0iSHR1KhuByBWjVdh6asz1uVduYfds+jFz5xwVsYSDPtjdAs7Sz6fFx1NGURTss6FZZ+7IYaMSTTzj8ak14OuzF5Kw0ZmicYlj8fuyoKWhxeNQx0Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765835573; c=relaxed/simple;
	bh=WkjfbJwNOL7aiuu0C82fO5vMBNoc5ERyAHsOdRg4B0o=;
	h=To:Subject:From:Message-Id:Date; b=dRhOv+iZOzpZPPUND5N0G5vMD/2WP9vBIkzexfIgohOD4lHspTZdPX3g5hfsoUGEDqSWF17GUcnWsqdb59j3gYxOoGCiHO1sBh9IZKiXLTUxtQV2GDn8ehlTp5YQWP/toFhMxxkxtpvYNPbz8Mfau4Upu/006W3pJ9K+sNVgaOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iA6xLsNo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iA6xLsNo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC4C19423
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765835573;
	bh=WkjfbJwNOL7aiuu0C82fO5vMBNoc5ERyAHsOdRg4B0o=;
	h=To:Subject:From:Date:From;
	b=iA6xLsNo2bYgmwRMcdoF1MR/7MVr+M5lArV1/nPBQgysQIwl+GOlv9sO3TrQ/Vlv8
	 U6ql3r3PqznY7OLMDiDz1ZqlzhDq8KLrcqBL/mUiu9jTgRIzHuq6tiVyFDWZEmwyuT
	 Avitb5NCEMl/Mnbj23VDPgK865zHecVi8TGQjwjtEDFQ46x4JS6cyWyuWfiTo/4GkM
	 yvRAEdXY7q9D5a8Roj4u0rWlu3iivJD1YVEJzWlOUUvm8D9m3pVZniVsZJ66WWRVCj
	 nPMq4/6VgB38aqLShpfmsCUJZxpz2w3INZR8ZzWT/MY3DnqDIKRVnxsU23TgbhF+vG
	 EVIp7QIMBtmCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332DD5B871
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583557359.29249.16640209173368759736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876941b370a925650777a01cd3dce1d74c64aa26b0115544bf21d5ebb21140ae
Date: Mon, 15 Dec 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765835573
