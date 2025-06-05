Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B6116FF37
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749162594; cv=none; b=F55FX8RfouCf5MTJ5VXJ75vOGKYX4D20qrfWXrbNliaRR0QkZc8G/xdX6IDUM/Ll62Xh3boRPvv69au7tP+YTM/wDfJ9uRrVrdtEHR+zqTUtbFp0Qb344cts4VLd+E1PrwJB4qhKQeNMjfqSbHE+Ltz2Bh0237FGgfi8yxVl7KU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749162594; c=relaxed/simple;
	bh=3N9y5AuifTckRk3rler3HQ0Ns9jeXwNMNsLuHVH1RFc=;
	h=To:Subject:From:Message-Id:Date; b=VTq2oBq42RB9jWNXkkQavVKVfFWiqt0ar6IH9YfySYaXQz2ullpZgL+XH0WmFdkE05NQGMHPFXLd1vSFjcq5A1vccWzoGfFnGXlnb8dbGqNa6CNuuGkVSzVzZniuKmiUXegbI2WpJHX4GS/2RNCWnB9TJ2bBx24Plk40UoLAYB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rZq3RW9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZq3RW9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A372CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749162593;
	bh=3N9y5AuifTckRk3rler3HQ0Ns9jeXwNMNsLuHVH1RFc=;
	h=To:Subject:From:Date:From;
	b=rZq3RW9yOZG0I3mm+Low5MCRXhszbFNPXEkNJDe5wjqGSrGKi4qTIMvn/4LuRLBrA
	 6BEiHbO3MvAXWO7R7Gh1FH5IhDSYCA+ZHtS/piAHGx1ozkDZE181pk9t3Ug5usxaUq
	 Pa1hOf1eG2Dw65VRrmWJSJMseR1mrxNhwM7PsjtQwUrXiOBr8vlxFCMtoPso7Mlrkz
	 6QzJyEUNPSFkp9eJ8iIgrO5BILKDeJ4pLFHVEO7eQfcrvEdWd20Sj4LSTJcq+COmUw
	 bCP238Qxo55xA70JYeWZBPsy0VulXU5hQasMonKmE98CbjIZHjpkvauIDxuVsComjt
	 wcjeyBon0fO+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916259358.20041.13132681721339578380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5b41946f4accc6dda3c4f17d6bc31d30b45f513d89f794a65a8d29af297d6b
Date: Thu, 05 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749162593
