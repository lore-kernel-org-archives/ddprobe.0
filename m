Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCC3101E8
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 08:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06A4C4339B
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 08:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684310585;
	bh=eOAFLs/Ks8idqNyRCyo6GqXsFf1YzLYjzq7LEnr9X1E=;
	h=To:Subject:From:Date:From;
	b=TK2ne6STbIHJjkm+l0UZfr4e1GGalpTY0sBb91JFuC8fkPdNmTKA6oIjxvKSl7U3s
	 pAEqqIh+WMHwFHK0dL4ErJSjJwFpXayTzKb4+vtOaJHK/CdJfhkn1XSqTYS3tt9bT3
	 JxqOWhjcOD5Z3uYbpUzyBFckl3kcIM521B4I+3BFpeY7pTBfJZomCGLfh/Xaf/04QF
	 7YC8Z8jF1KOafW2TXhJ11D6Z1LJvlxA9z1M+cHorNrjUv93X7R1t+EJkHD/2h5K53r
	 BgsJ0cJiE9pOKduKIxLBw1tNBnCAkeVg54F27sDiQrtePmVMMfTRqU7Tut81Ihtfr4
	 MTavoxT+JfAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CB7C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 08:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168431058579.24993.10360661273316971787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b526dd3364aa900bd6251fcc84dd5b0bb238b710cfa82870d46cdd278a595c20
Date: Wed, 17 May 2023 08:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684310585
