Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3AF394EBA
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787173234; cv=none; b=G8dxvIChlV5OvddzBUtCXYJprI0UnIp1M0zTpnZu+BHVlYfgnwWYaP2ZqQ4rCzWtnJJ6wMyzXgBMOcD2Kgx10dqQLZvur8da9MB9kX6ZCex3woNnOUKSRA8aQ+sQnn4q4VvrvzKVmA/a+23GIAmQyi/QyHoRpNeu2JDMFYOv/YM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787173234; c=relaxed/simple;
	bh=Jliev2Rn3d8dQUDmhPFNav3v9Zd/6FG38bPDU6fmnBA=;
	h=To:Subject:From:Message-Id:Date; b=LvIy6oxotPQ8ARz0xbidLbdJRUUbmIXv6WP/MubzoimDMsOJYy45H3KaUv5prOHcCvN9F9yDMRFS/VRcZrjkMNMRBrux+293DV/xJLauBALGT+deRD4LmaLBwpFh4xDjCcPsOUe7Dz2O6btxXE/EdKCEYitSA4b5INpqwY0jnic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2bcqJfC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2bcqJfC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5861C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787173233;
	bh=Jliev2Rn3d8dQUDmhPFNav3v9Zd/6FG38bPDU6fmnBA=;
	h=To:Subject:From:Date:From;
	b=m2bcqJfCqJnhr3GXCG97aUkRUGgj8/+O6PMFSY8aCXw3iIHS/+4u20oLA5kNYYJs5
	 7dUCvM5+Lta80XZSrOkbcHn7izmbEl78ZLQJ2wxlUsnEhIXMJHOy6vb4WhNP4wUDZr
	 8s2zyw/g3DwZueEbdE14u8q1FW7PqVnvu/1ShoYm3SpmSgJzDU/2ipokC0ts6gBco3
	 SswSrjG7C0SkyUDPjhjonMEeNdJtBE8lW28nwEr1unvlr6bXzex5Fs8DXoVhkmUt8g
	 KAdeGJtVuyE2+MI7Zj1qgAlTcnJU3iKDJraJN85KFvc0+3R8O3mpEykuNCx+Z7tTyM
	 AWIK+jf2qjoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB68C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178717323369.15221.5464797616067695624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d3ba17396945116fd00428a284fae565a1b14354a7553537ca76ea79bda8360
Date: Wed, 19 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787173233
