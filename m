Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56BBD1A9FBC
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778323654; cv=none; b=tMxijgMeM+0MrfmiYY9Z3lAyf2UASJW0VrW2ySBy6XbQdbb0yUfYAtzCc3+GiW82blEcXhUUMxLvsMx1PyY4nNVbMZDEyo1F7iPBvLAuxLPmW4LBy/4jXmib66kcva/uG2d8A8wx4iZzTxlOTqDmGmoLzxeUKCeslPwJgOidghU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778323654; c=relaxed/simple;
	bh=hmhwVDvg+3kQZqMXvqYB/qR7Vc4ba2A2WhlTpqr1Mac=;
	h=To:Subject:From:Message-Id:Date; b=umLQBvuzbm8q3VT49U3iQRbgBJ3PMuDSCqgFsIr5b9dQqqhlBLcJHjf2/8mQeYEeot7lS9uZi2mQ0lfWGCn9bFYEpyvlh5+Ov6BoxlnVShJ5aT01dGh+D34MK4rZ5MVKEj2zJ6WzV7jBTgb393bj2164GV5idoA3uRNnLxpDnbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsNonqu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsNonqu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3794AC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778323654;
	bh=hmhwVDvg+3kQZqMXvqYB/qR7Vc4ba2A2WhlTpqr1Mac=;
	h=To:Subject:From:Date:From;
	b=OsNonqu3rCqvwsv33XbRK5aBtVAI7rHlFr5ULYO3gz/vEY/CwG+U/4Hy2dSjINPb0
	 UTWqOl7i4nUdBgSAeLhtdQ/p4W2NXFE/9nL5W3C+B9GxJOx/UFNauo7+9+ddavri6t
	 8dGH1Lr6drEHt4kM2QQ1QqOU825URiSeTVyPXMoxNGFmx1WUvWTVwrH/ECmwg4n6LJ
	 asdNOlyyuPXhZS1jPUA2ZPA36oTpZFPZjJEcpC9ae+qvkJwgUomOjpauvfJvXTCvmz
	 abV9X7hHRlLs6KnNsagRmdzfCu7g4xifCshEiq+qim8G4BblUjQu1yL/6QBaBCfFGn
	 Fc9/8w2O5CIsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8EC7CD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177832365387.8538.3781255665068947319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c5c597935c02dad9781a55ef0a01fe9a3892c607c973444d98bbc00be723bf
Date: Sat, 09 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778323653
