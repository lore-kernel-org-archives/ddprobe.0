Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A3B211472
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750517994; cv=none; b=lYMAzLFprTLqS/WridAY5FTtWgATSpevt+r4GaasfmPcPl7Tf9uPw03fTabsM0uYgM4KN/awhK90nHMsST4Baic5QKf6mohkzbg9PnOw/p0PZu5dK9qewJ/ZjZs9HfE+Z52rzKxCpKRyhTBtvdVUD80JpYYTiDvdp1Ptcrtu1G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750517994; c=relaxed/simple;
	bh=JLEDHx9gHGeksWAeD5sD1tcXSe3sayvECXcnPQtpyYM=;
	h=To:Subject:From:Message-Id:Date; b=Jdzns/ewRwLI2m32hSu1AW6L2Zyh8PlgOsX24Bf0w/VWgwSRZMRJahzKP0L0mLM28z3r7lR4RKLZoIAEL2Cz0iDJ6s39pHv6ZxmLBtG/zhy6919vNiiqIgjO0Ilduk0ajMOhwVhF06UibyzmIRGx29EegQp/kCSmQ/1U5d33O2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVsqgUwj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVsqgUwj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5CC4CEF2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750517993;
	bh=JLEDHx9gHGeksWAeD5sD1tcXSe3sayvECXcnPQtpyYM=;
	h=To:Subject:From:Date:From;
	b=SVsqgUwj+mWI8UZqkM64vM78xtVVhE2NM5keOzTSTwpwJY9/36aRTWWvIr+cXDF2v
	 pG2xp87F5s8HJZ0Tz9TsCzQuzPfGq7Nz9OA0RaYFEH6t5xRrd1RXepDzzsrSKh56bT
	 +MvyooRHWoLIWgZ5Mk8fbx+ulZS3EsFfSZHsTqgKg23d09Nzi2cBstyHle7VeA5RiI
	 8t336QOgDyew4oo9a8Yu8LY2YKxuKKrTd+8wXJ4Uh8zGw0iIyXaD+56Y9Kempf2il7
	 IcvqOnXYC9rcK7KyJVavNcO7oVQ7CjcXCVIyvOHruYLMCwxZp3DO3q8zwmI17EhfvW
	 4Uo5oJb2AEH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D1C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051799357.11285.18192414296801874737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6041fa81d97499275e00178f575317185c50ee81236231377d588c5ab33bae44
Date: Sat, 21 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750517993
