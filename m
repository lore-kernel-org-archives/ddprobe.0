Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C118635D
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787200834; cv=none; b=fRMTCLzrCMi95BYLoMiaYcPKDew5qJ0LY7HQVoibyQTYjGdZofjZWv81DZGJGo3kgBP/Rk6KGVPHyOTs87Y0Y/va0A15r3MnjxcYKWP09aG/3K1X8957C6E6Q+pw9Mf9U0uSFAa4fWMGsAfHtwZcQVcDutmkN2v1stmXKswPnXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787200834; c=relaxed/simple;
	bh=w0tuNxIk8u6VfO9goFabZPTfQ+TU+ln+DmSgXh/Ee0c=;
	h=To:Subject:From:Message-Id:Date; b=eA3nZ0a5iD0ChYNgJuHbUDulgIiDmuWNRfSFbMo8/YCeA2gVInnNYHrcbX2HVxyVRzn3RQtPK6P7NwpPnujpSGMx8UVOMmmKP8v7Y/KxxaXERYRZHBnVfMNHG3nCjFkD1Zk3Ub2JGx+/Jp8KCegPPCg2ciXoB1g6av3I44T7xw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQJTll79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQJTll79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22DCC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787200833;
	bh=w0tuNxIk8u6VfO9goFabZPTfQ+TU+ln+DmSgXh/Ee0c=;
	h=To:Subject:From:Date:From;
	b=JQJTll798uT+9sHMvVwibMAbUb7Q2WD67DlDQDBTHdtLZcXqOGbWinN2Ab/V5HVaV
	 zdnv8Ygv+BQj5tJYuuEqQHdufmFcteZABI/vwTtVII4ifQV6enjMUad0BtkDG6eISo
	 6blHFplQY4i6PfvaLrWV4DLQvkv85p2HwgpSCEoFt6aklyg9+6jT9IUCd/AcrEFsmo
	 xugIfodQC3m4cI7uPo1iL5DmSURpz6y3BQ4belQIb+SgFlk3XQpDuKfkZ6+IfZhBwt
	 8e9MgNEmMsDRjF52MgzhSnr05csYkxItSHRrnUcKz7tr/rMRMjW5FI1FUIKUT1bM4d
	 8aP4FkdO+9pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F79C5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720083370.26845.11664372468124705238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a23effec4a0f1f9436fb101ff286607fb7cc5f7b93fb2359611dbf6eeaedb6fd
Date: Thu, 20 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787200833
