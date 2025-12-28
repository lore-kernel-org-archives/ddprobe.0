Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530A51E3DDB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766915634; cv=none; b=aRL6A9/Cq63aaW6jQA6A6tKlAH0jBVFWsaCCWHpGxbffTbzOvZl+Spiv/0CZg2jPT5uoli2zzCBMT+JmNbPtk5MSb8w4t8e6SXNS/qNmBw5HpRKLIwOA4pBY6foc/DAm1S8vZLUdE+K9aKAUpvmtrkg+CnEIAEb581LQIaCCsDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766915634; c=relaxed/simple;
	bh=ycNc2vbH7u0LcVzoslDPx3eKBqMDUhjg1ySeNXl8YGM=;
	h=To:Subject:From:Message-Id:Date; b=dUcJSJR71t6B8O6vcD/VZGY1E9dZckBspwlD7ZALeLgrgbGkqEvpn73B/p//7H3ChnVIlujYu2ml4y/rCZyTudHOhrdUrXFome27AlbjqYJs/tsCC9cCmwMW/lm19I2LaKX+wkcLYRzJsZlI58KF8Sfz45ka/uQexuFgL1sJiJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dx+J/y9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx+J/y9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B17F0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766915633;
	bh=ycNc2vbH7u0LcVzoslDPx3eKBqMDUhjg1ySeNXl8YGM=;
	h=To:Subject:From:Date:From;
	b=dx+J/y9HvSX4uRjN3rvvZEl0lzDFLIl2E698ix+oTUwUq6RZZynQMPWZI3u7HVl9a
	 1a7sU354xn4Voiy7J4RU6wqJA9MnlIV8aNQ7l5dAuS5hslHCUblyBL3mY95np4l1Zw
	 dnGapFnLfHLoE8tJzyL9hoWZ28ySsT+cK3uRIe7WUqMSgG3/9Cm5LbTs+OeJHgrU+S
	 VwvhXcnqdHboCfBsgpKgadMkceXuP1a1Vj7V4bmclQSQhSZFqED59Hu3nudMHbB//o
	 bM9o1iGYSBX6aIaxORiGem6alC8IbMi98CfEiDQ3w303gHHK4VtBb9yUum85+ipiBs
	 vbC/F28yq4nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C08D3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691563358.22343.14846557739138225973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f3a28d0f608af9567500823b18613d732e005d0564e319906ce8e8b69f07577
Date: Sun, 28 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766915633
