Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2D2145B25
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749497394; cv=none; b=Hnah49grhAujtJQUPg6cBKrWmAfsry6oASwVGKxtywlucCdxlW4Yk2pjexilXbTr12VpdX0QHDa2FHgCOuzTa7r2C5l315xk/GPs5XPLv+WYn7Hcyb+gY4w4buiVY7zRhT2nxNLenvV2681+8T33aLZmbQLfGv5KKlrjx2vkD+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749497394; c=relaxed/simple;
	bh=NG6qqbt2J4RYCifmdycd/SylnpMcYmK23DZGVvf4TTU=;
	h=To:Subject:From:Message-Id:Date; b=HpVuGRLJWU0Dn7KM/YuCgTsHYUH5HU4D5fmFafzLQeahCrgFtJVtOYgqysjD4XHPpC1yFsCTh1hFqZyXmzz4LUp1evVevViwroFj0BToKyb+xw2hDQEpLG4T/ZK9E7GYxPmJDbzB9GK0QDrOaT/Mh3rd3Uu/egS5EAzxOK5sl2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5+FODVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5+FODVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3BC4CEEF
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749497393;
	bh=NG6qqbt2J4RYCifmdycd/SylnpMcYmK23DZGVvf4TTU=;
	h=To:Subject:From:Date:From;
	b=q5+FODVxFmP9GYE/QpwjUjcxtLzkUt8MPebz6EpF8++wof2nreD0Xwa7XAb2NN4Ok
	 u0Cv+YS1xaRSc5Zd4HdssPXGRO+rYsFOD9zP6juLVWrACL7AXUi1Sj4YkapHIqYsjV
	 ikAtbCg6L8cMNoklH6LKhiZFDH1PXGUUllpEbiuKL7zMt0xHPJ9xQh6EFhVnAgfMnr
	 wg3W3hGE3U5tNOp2jTaofTIJ5XuRMvraYu5hrYbIkoFar68lS6biqjNViG0bS2rcnh
	 yo1B3OnVlKqVXKZYPXMaEq3ql8vHIA2DCN3aK1P8MwiaJ3/jLOOt1xTmdKmrPPWQGT
	 Nh47KnixZKyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F104C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174949739357.16524.1189249837971317742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f385843a9e228096211f2d5d0dc137783f9a935efeaff12bde536726f8aebd28
Date: Mon, 09 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749497393
