Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04517B3F5
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710255497; cv=none; b=R3P3PdkW+PNvLb2dd9Jx2n62P0j3iSuwnxvwjNMlscAkI5JRv/0YZLNtxfPOLoVwQ/K5KCWmL7nUoRe4JTL3frJXo8WHAcUnYy/vQ2w3rc5Tn5+bZF2phsW0PJ3XHNHueBQmy3tHZh4fnr+9HQgh/g2Lhstx884xN1qZCRfUNW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710255497; c=relaxed/simple;
	bh=PmQliPJvBNhWLpbXGioJ1InaGvr9/Ub5AY2yQPD4wp0=;
	h=To:Subject:From:Message-Id:Date; b=Xcr00QPcGvNO/HVi/npXWrGjc7xW8Oe/3F+KkrSTG3fsPQNL1nPIYxm0CKE0Z3N5t/oEUCrv4h3x6dtyn06pWYnNumhSRNC1SaLII5erBdBMfWwkTsUxIWJv49SkNzUR/v53qttVaSU1WV4z3wWYh440TaxtgTJvH1lBievAWkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2O+wStF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2O+wStF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CFA8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710255496;
	bh=PmQliPJvBNhWLpbXGioJ1InaGvr9/Ub5AY2yQPD4wp0=;
	h=To:Subject:From:Date:From;
	b=I2O+wStFma3iCE44G3OqDKt649sIU9nvD8kuUhKUv2xt3PZaypYB0XD0FK+3nPzo7
	 v+I2V+0vqucCN2G+E3J258EdiJeYttRT+vC7WWPKpRzFzPo3q5KQsE3YuznpuUhbF2
	 Inhk0WcI4f+w1D+ZWg26MujwxVsTlRsm1MPY7Bic+GKrTyyumP8C22SQT2ogsZJ1wG
	 zbdnmYwuiOikJ+BkUtZeMB+Fotb1Ubbtv8s9+Cd3ySG/B7K/JDj4gfs+mOT4+laUwZ
	 h9bgaSF715gqQG+GnHA3kNJAsFAz4VOPzjQkiRVN7M03shxAkqS8yerE/42h2kCePj
	 /jpCdRDmQSj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F35C54E5D
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171025549639.20599.12005985743798767153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c4c752f2353d016f282774d9dc15867460ac7fe043820b97cfb97b711238a06
Date: Tue, 12 Mar 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710255496
