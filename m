Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85B526290
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748833793; cv=none; b=e9kIYde6VPiSDe3ypfym4BJC6a1SfwZgl5heVK7ESR9mDxoywiJX1QqwigH5c/acZfx7tmG2h+56Xb3NtjbLqqJccCw8oVpCWHTH1eyP0T36R5+cpTBBXzNKQwij9Qd+tjzz1C82ufsAgB/f8TJPSayepGjosZjlqUzkRxFWgks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748833793; c=relaxed/simple;
	bh=aP+rNp6mCbMoMu29rb7XlERRcJ4BbqrbQcWfPk7wRc0=;
	h=To:Subject:From:Message-Id:Date; b=THNQ/xe8dV8Bik8KpLaIXXr7R+Qak8SZeb43x4Z3/F7gdgOuDmRIUt5XVQ/DSnSOogoYr71BoUba3BKcC7O0uQH8VMZTpL+JAcEqDAkyHK3fY1pKmbKF6M9U0hbS3iSUzHi2pFzXheib8eAMzTf0oMmA7YqJDYf5EY1ARZ5B8hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txFSL/nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txFSL/nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A524EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748833793;
	bh=aP+rNp6mCbMoMu29rb7XlERRcJ4BbqrbQcWfPk7wRc0=;
	h=To:Subject:From:Date:From;
	b=txFSL/nO6Xp2+VMISiQ3hoWog53D2KZ32ZVBPpBzt3AAJWRR1+3YFcERU9nGGZVXJ
	 8+P8LK9XRaltYFKVcqxmvLkAJml3Smsoy/n1lENzHRzCJQnelF8EQDvDO4HkBv1qfN
	 CWvve8AksaNzjTzHcowI03cWZuaJbH8Xd7Fu+9YcQwNH1xL7gGbvxPYe/VuBsHCag2
	 pXKuP8XFHm8NqH/qgICYE9QhDv3n2HcX/0UtbZ1gRwqMchvMZXGUBGxD424Uqa2cSG
	 Gosk0lyGVO8UfHPz1xe4GKLvm2tqAh4uvomAtmTix2xjtSGQRdOf1ZYmQMOa6IvaHP
	 Q2NpAcZevgS7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B68C54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174883379357.24172.7511372369612165365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfd104b654736908867f58b6bee9e01c735602eb77aa5a870913322ba2d0812
Date: Mon, 02 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748833793
