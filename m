Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2826C23E342
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765025574; cv=none; b=LFBUuzw234u4a766ySWUdNEn41SwjR8cjYi/i/QYMjKOGoBckaUaqDqi9NuZXb/cylBfuzaQ3F2ERUPCU4e6aiyJ5pnbmytqOMjvPqTXpwdXqBkfzn3T1ypR/ESO7c7Bj84eImFfvVvGwElf6xAEHPC3li4/EEo7cOTQB9qqOJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765025574; c=relaxed/simple;
	bh=QxHpvGXGqIqzhGf1OGiT41Z0B/7CkED6/K1R0PXA5TI=;
	h=To:Subject:From:Message-Id:Date; b=UzRwRimDkb/TM6J/Rk7PfUwgOUfkY4Ie1/JTqlCcDZmLrfCG4ZbUtMSQkeeRFAj5Dh47isbk6eYv6GlV9laj+pIT+uAU6wUGXNlyFaNcc68/XKNsKjty8GLhFDoMiZbORZNjadaqmSzy1zyNR4gfjYWDEH5aAmLywUYgOVmjCqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYQzrbah; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYQzrbah"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93D4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765025573;
	bh=QxHpvGXGqIqzhGf1OGiT41Z0B/7CkED6/K1R0PXA5TI=;
	h=To:Subject:From:Date:From;
	b=jYQzrbahh5TWMdzKwwiB6EJeFHhQRbjv238EXIHvyqzFiC64fAnE0lxUShDVLR3Oj
	 0xzYSL4lmxEmR/Ohazp0bTIAPdUZAFU5JQ2sKzAf1EaDYKLOJXSTCzanWv8k8jhMn+
	 aRlzKiYEk/EyLwiDrEEccz1jzVEGj7Qo2eDX2j+wU45sFlMq78ZuKOtTMbK2+5PWkb
	 8PLcTvfg846i4RKUtxPGevpkZkoyWB3oL45qp7SvbwRGEtwW11lMzzlHRGk6Ntvqly
	 o8w7DL+RLKrIWDRsu4d42XMBdtVj94mgIHPeo3xKElpi20xxuTGjrFbHpeuQpZiy9p
	 aI/ZQNlfEJ6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A219DD3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502557365.30588.9853173191320344586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4973255db89a61c485dd870b5ae49ec35763b98462db96603d54648788e701b5
Date: Sat, 06 Dec 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765025573
