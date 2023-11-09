Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184A9D2F0
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2K9dV36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9272CC433C9
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699540696;
	bh=RKjpmBCAl5018ACGpfALVT4zmjAtj7gygLK/412XVMI=;
	h=To:Subject:From:Date:From;
	b=K2K9dV36b82zO9GtiB0o2alvJaXIMNxWzsJVw3y5TlovWWMRMx6aZsJEXUDcQQHXE
	 I0mgi4V06H3Aavx78dFc3KuAQWPmmdGGKTGg5vgDz1njTUVkYP6ntd+wDU1bDYJOYp
	 b/g26SWTwEHqIT6zeiKyYI3C7MtcfCD5xHAcP1n7Z18qoGxSGjW/b16n3LkS4/wIwh
	 Uo0pMZvRNYzZ1QFQkerTSlZ2tomT55FWTVtPqKQz18XpcGt4DhS8zXnp/qRzDukszh
	 atTU9yDggZ6Kqy+vyzrFv4tJ1QjgVl02Jlte97LljSHhJsGNVrwxov/u/9GdTUZAdA
	 sAsOD5JEhPLTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77011C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169954069647.3107.1385049204155038440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89eddde4bed7474f2fc503f96da9cff59187099e669f36441d1d5265de2fa885
Date: Thu, 09 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699540696
