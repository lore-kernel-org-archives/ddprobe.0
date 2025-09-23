Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E3B1990A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758607794; cv=none; b=BoJf2acRpd6HvBHEchZywomlSqEoYSogfKxBdTMghQpV/E5epMdpTW5itGdoyOM3jqQNHWMj52vGJGbhmEwKHrj8M+1rRVzi7AQfZYWMySI3BZwC3kZYMKp3l43PTCDXmng4xWSrYYZXuOhh2XmKtNEZb8sQ7niY/0pMBtCgKyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758607794; c=relaxed/simple;
	bh=BLv2Exqbj/5SxjuZZB98+uUUig9PPdYFuHROcfL/Zp0=;
	h=To:Subject:From:Message-Id:Date; b=e42GuvQPdy45KYAAxbhp9VJYdn0+XfIRwOjWhnDp77Jp7gxyzMAEPEtwUj5pHPXI8AU2QBar3ANWFmZPiZjYfeyQDhs/o/gMPi862cVeQqHom0JQfDGzn97OC0aYnTnFwOob3D0BkCKJnC4JbSD+elCtIQrVgOKDCr20yoROP5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hy/qkOii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hy/qkOii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D9C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758607793;
	bh=BLv2Exqbj/5SxjuZZB98+uUUig9PPdYFuHROcfL/Zp0=;
	h=To:Subject:From:Date:From;
	b=hy/qkOiie7K5xCWSfNlOgkasKiEP8yN7TR7DTp3OGYbwCFHnOyfZf/eHbi9uKRHHj
	 Uib9nVp2PaFzvVL7gSTo6OAsPLqwvAIPu7w+qlGQ9+lFGUPzvF6l1PGDWSBseiyEr6
	 PA2SB87p1BhugcSDvIGeMh6JOd5Ert7oGn8P516twhKYgxvRfGDJrR0YNCUEJyqyF/
	 NXdJfACnMaHP9pZWMTbmlYqAB4LDBtRCaLA/KBbrI8abvYGvlvIJ5+MlRI5Bo/vSFp
	 KDkNSp5/C8oYAeLxjkv7KwcUwi2ZHmcCb9htGcwp7XPAidV6MG7pmJrmVF+inePA3D
	 hEOLXWru3Zw2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDAECAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860779357.17692.6731406516899716254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f354726f600f31520652d4c1a16b7a9552948137102830deddaa1cd0086fbaa8
Date: Tue, 23 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758607793
