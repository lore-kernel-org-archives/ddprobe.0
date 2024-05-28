Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E6798825
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716864863; cv=none; b=BcvCRprD8Yoi/trV7FIq8QLzRu+O2+r+Rh3szdBzm60GQxBDdNNhJ2T2DJbXw/stjb9CKMkoYWgYuFt3zrkzxQyAZC0GO4LEobn3JvqrYM9tn8wKn+oe+98nq3Hsh1BJ3Rkq6TLuD7gvrcHhhAAtlC1Vsvme21Mg2n3ssTLqvkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716864863; c=relaxed/simple;
	bh=LehJImnnPmDhGmOqQq7zopALhuTRwUUjRanE2Fpi3+I=;
	h=To:Subject:From:Message-Id:Date; b=PzwdbqM6F9GnuDnARf3fFdO8AxHNXHF+w+qT2kwDrHi1M2MCHzHdSZmwDpEGQ6LpcXvlcarOMJG3d+xSEt0WrpotnG8vc9LlhbEljcBw1IA3cqJObpzy1O/Q/Q5keT0yBQiDofS6sOH/Yei6izaI72EQxvrKSU48lKuygcH6/7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3kwPbdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3kwPbdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2278C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716864863;
	bh=LehJImnnPmDhGmOqQq7zopALhuTRwUUjRanE2Fpi3+I=;
	h=To:Subject:From:Date:From;
	b=r3kwPbdOW2OE+1qzuivWtq8qVdL7RrMYLXHxDLv5Iv2JFz8xLkYJrkm+MaOgCOM6k
	 aQfmVMPxeBaXWIc/hYN0FKJxVz3E+vTeYf6tctMdHOmVHJyVdgkBfwHNqWge4Goylh
	 3DAjSJfb56ubLwvCgBG+MZleO/Vy7w7jrLEuOldQVzJCtIFi85JxvtlsvdxwPNcwsa
	 M0l2Lvz3q0oszMcqYiCB6fHNdBRrm4yc0bs8F07tW00TQ2cXHYuhFMUzcZ6Lz2ZfDG
	 cNKGNrApPaeWptu8OHxE8O+HTOhNJWTsm567wDinFJ7ja/f1oP4WFUfUE7jtpHKJ8p
	 wakagxkjB85eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D382AC25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171686486285.28041.16200107760327949483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2402296bab74445a76730419a5e91b6ee3dee53ce839d7471b24c5af72dad40
Date: Tue, 28 May 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716864862
