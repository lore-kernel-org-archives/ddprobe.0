Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC9FF9FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739923734; cv=none; b=Cqsqb24f5z9kJjGQBKNX01hqYZhhxsdYGpqY28M37sXMiITYQ62Yu+hh9bRC85O6jInMMWBkTKeI2w7qYXS/4ZqWr5mf5sxvks8s7np2t2rxFl1V2rt63y20PX+ufpMg1xHv7DWzIeR2GCytpLYpW1oEOmP9/CWvcJyKBiw0gTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739923734; c=relaxed/simple;
	bh=UwQVCdcLHI3ykDz+Xm3mAcSYmCpruxwaR/OezSpFFLM=;
	h=To:Subject:From:Message-Id:Date; b=qbne7RpqBeVpUWFd2WTEweDeO/gK+hxVSur244ZLYzszTckOkN+JnrcMHrRnL9OjIzPnQ27iJfks3hNgONkja9ra3yXSt9MLf8YCrOHFvBYCCG3IEaliFbm08OgRPZvJpL4FRY2SxE9YD4e5BSjVc97e2tXADR1A8eXluNxPp4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmV0Q3SY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmV0Q3SY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB10EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739923733;
	bh=UwQVCdcLHI3ykDz+Xm3mAcSYmCpruxwaR/OezSpFFLM=;
	h=To:Subject:From:Date:From;
	b=OmV0Q3SYSPX/G7wtUaiey1nTNZZv8xEcSffe0AAEoS+TI34RRgHdz3LcEyHmfzzwR
	 FRiuobGMhturLylByZdm6ECiVmOBqBet0QbseFZGydwjvdHaN1DSGF8nEzz2DQIRK8
	 VU7hoI4jJUAzNdhVqvmpvGNP+zbzxgzqJV+bZbfITXwmUTWxJezadMCigersbxmLbE
	 omM9T6E+lQBgHJN8ssujowTUGqG/Jx7/p0V8RiqrzKHx7w9qqcJ+KjmWyylhU0EZjI
	 zIPcUFEfyxW59NnEr3WvSWMbjTfflTtmNg2ANc+rGV7GJDAyjjs9kCXNIl+Q9ta4h1
	 MffXWQ+NWv8xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA27C021AA
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992373361.8335.422222710282456155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af68df4cfbff10273185040db29fa88d1433afabd2b396001232bbebe3e1c653
Date: Wed, 19 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739923733
