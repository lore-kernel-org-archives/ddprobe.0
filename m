Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA4F8F5D
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715132543; cv=none; b=S5JsDpzmjsHb1ys+wvZmy1bi5IHChhM31N5mATGldV7wDcagYteGirc3Q1/4k0HRL4ux9mGaSaZj+UoP8JDIaZzylUaZ4f02K/BxkwS5n78qFb+rRmUbZi1YEYzMa9h0+bDYZ8cG9EYMta8/Zpp/L7LcRvDmgfwpjRQBb5Lau1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715132543; c=relaxed/simple;
	bh=/OM5u3+dlUwVOwkGb3Zkc/bxfLXClHnAMUoxsdS1dbs=;
	h=To:Subject:From:Message-Id:Date; b=kzo8kKgqQ7NQHfjycnQaje+uBOsHe6xy2OWHRovH6yw0vf5R6s9bKfquNrxWeuPeZiUnEQ3/KNViSEhOluaUQDqlYDXbNIgfh+hNscTzkg1327IAzCjO0Tj+TwhjtCCu2e5WEqv8lohcnrxj4mWGHRyjSrLU4mFepBSCvCMaiCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZrrgRAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZrrgRAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBDEC2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715132543;
	bh=/OM5u3+dlUwVOwkGb3Zkc/bxfLXClHnAMUoxsdS1dbs=;
	h=To:Subject:From:Date:From;
	b=FZrrgRACG+B86IFotcNQUqXCquxjFrO0YrbQCtql7I0gzNVYOd5LVYbOfltlrq7LL
	 GnbOwCP0QdU2LkfPp+xghoc4hbnLHavRXQkHYHYLIVDTEzTnJWUQXr9aI7gIpIO9wI
	 CXX1z7rJpCYxpGODMIVm3TPa8l/3moWj4jx0G/G4kdyTpvmIk3ocwcsyfdBD/JBHQK
	 9gegcJHn0XBnGMwE3S6ErdxrvPhxAuw866ULW83Yp72zsuz/aSmhVOebRKIbVPfsED
	 MCikBt/D2JSXR3SdJkIIbOkqLt5tDw6JtBHGIQwjMzpqocyh+ZEEL7kujywuTJ8Yzr
	 gLkO5tuJa+3KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8B6FC10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513254282.16815.11689811132774961457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4006cc24bc4af2b7e548b6885d03d1889fc131d57dfe577fa3fd662320863ff
Date: Wed, 08 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715132542
