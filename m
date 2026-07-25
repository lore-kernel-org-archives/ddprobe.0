Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1711A8F7B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784961034; cv=none; b=iuGA+ZZsEwsOJrXJlaRPs+wDLcndA1gHhLlJZBhJcHJS57FDgBQGHGhw0xx+io/TpAtZHW/H5LUuJ2avWcRgGA90jH45Vnxk4RizgerVN4+bWtpBVSFHAXH3SjxFMIPAmPXXXtTncUkng9w5O2E1P9Zed9xhWTEfjRxoHWtdiiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784961034; c=relaxed/simple;
	bh=Ckcc8BMO4ewEocQjE1ABU38JgIiP1fDo/u30AeiYZs4=;
	h=To:Subject:From:Message-Id:Date; b=XsC32HoRteYQukyy1KkrsAfNJnBuxW4ce02y+e9H+QZxM0PsKF4PrJ9y/a+vgglwouUjtVvJTtx+Ld9fb6fBPDhSupNq4YvMNTXhhpbmdUsoz7nkpUjzgYqrvOrZAbKqbH5peENFjA5kay+joSx1Zvkp1FuLBHXq4kV6y+A9LaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGHjueL3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGHjueL3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8927C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784961033;
	bh=Ckcc8BMO4ewEocQjE1ABU38JgIiP1fDo/u30AeiYZs4=;
	h=To:Subject:From:Date:From;
	b=PGHjueL3s3OUoSJpL8FTINu3H2ZboUS8vzUpjbg5vM2N6uREmbkUegky3c6OQ0h9v
	 EsHzQF6zRA/udvQ1N4e0glMxw7OpR9R+8OxrdmA53bkeitOKTfl1ZhwqHyDg3t1A9l
	 N1LsEvmFhPhXFUdwSww9jbFXrEFgQVDJCpj9qieznrAVNmzPeK6N2MrDgRCKw9UAPr
	 c/Z+rHeZrUFBDR1TGCi9ZNipj8H0NXtkBNdj/CK6pNuxOOAmI8J3p5bSEuL34ic5W2
	 OAc6eVBmn6JN7he3M5oqq0TjTm9Ywoos9nfnQ3vvbhF552bpYfRmMJtNaYaCu9BPOT
	 fkBz3SbsFYmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09B6C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496103369.14571.8424551103434714460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4a0a9df8047f2b05ec7b3c37e6eed66cfd649a1d6b02cfe370ae6eabf10048
Date: Sat, 25 Jul 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784961033
