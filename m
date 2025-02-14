Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4089742AAF
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739528334; cv=none; b=PuMLi2Sqhjo/CT5KQfnzJDjBPdrFOOeQo8pwDOZoG6WbnBADAc7t8hznEOsuBZPRsZBaqxDOrzWT64DIOPYpXJ1fSHgI0+7YCKOxTzavyNbO+gQK+B+eCOhVg/LJ0/LEvsSfscNoiybudo95BBvZuLG3Zkogmfb+3uutDZPN5zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739528334; c=relaxed/simple;
	bh=9YDHx+gRM2d+rAtjK3/Jkq0yLb1NM5L4n6u3VHpJr5o=;
	h=To:Subject:From:Message-Id:Date; b=ZjAAap4hcJRwDv68JZTXvN6ihP+noevDRlX/n0P8RUwVu5eeGBZR2E2mBx7fON1/WJkP0YD4Onj4UIkjGVU842soFwcdEcuJLrr2uhS+T8zY0v1X57XIZXWIyaM1SbnMiikPLaIKathm1+F7zS4TKntaIqxAGkQ1kwIyTpEjWRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYgEAd7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYgEAd7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0CCC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739528333;
	bh=9YDHx+gRM2d+rAtjK3/Jkq0yLb1NM5L4n6u3VHpJr5o=;
	h=To:Subject:From:Date:From;
	b=mYgEAd7glycwMNMqxFUIwHcelr5KIO78jdm7UQ25SKp2n7NzKq2QMBE1fmxrO2sRH
	 CJQckzuv/UcVNrKnr3b9ZewbJ/eo0dXfYFQjH4HRgc7aPr/DtNrqYKIZnLJOkFmPXp
	 zu2tquB+AnAee4JuNXIpprIZMLVTQ1x6LvkfoXZe21uSJRDKp3z3ubu5GxeAhzzBRC
	 O5q5FNcW5LHjLE0zad7JkHDO/Fy6QhuR5VCEF7610McjXEeynvwQmN/1dJWa2MSMqv
	 spzW2fMFYA6mJFd7FCW/5qaOik/4dtLu7f6zdEz4Jshp6PbHcFuOKQqgPF3MXmk2sE
	 QdBjlP1hG6FeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90758C021A4
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173952833357.27291.2187589998100678011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb089e45d7ad84676be9830e8670d41d8eef40a61d677ff69c28594089aab788
Date: Fri, 14 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739528333
