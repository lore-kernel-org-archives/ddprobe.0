Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFEB3FD4
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719537863; cv=none; b=tdzs7DHAj2QcC4eLTek2cSX+Vb7j//QLloaC+WUZCI+lrBW0KUE7uuBWiY8ku0ZPk3anY5w/5wwfX13hZRU6ybN5VbCkDiSIbkcSyWkS+21ZNRxvE2J3uqrokj1rS0FZdfGJgYjteZr8VcI3/XcdXo1idWe7UvjnxW2aRPi0iEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719537863; c=relaxed/simple;
	bh=zHHffUnNiNJF5/JWBJEteyghtpKFbUFT5AHRnRjvvZc=;
	h=To:Subject:From:Message-Id:Date; b=N7sNSwH+CRXJdfqzvDZ2RQyQY1TDC4jRWR5CHa73+wqoSIgwmwWO6N6SpEi2u0qOK08R6Bhua+Dg3I+EwlVVrAQQGa9GhJfxhn+/oPBcJV04sVzBIHZ77gn/eBZQOnJkjJGO4pxpp/wqyS5MwAkhsN1BTc4Kj2lLaLzOWn/uhus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PI50lcGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PI50lcGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E95E3C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719537862;
	bh=zHHffUnNiNJF5/JWBJEteyghtpKFbUFT5AHRnRjvvZc=;
	h=To:Subject:From:Date:From;
	b=PI50lcGkh6mSEPVZpBk+h5Mm/e7Ee2xATY4Aygdnc6hF0xi9nJPjsgoapNymRCGfg
	 mQF2Cj38A/agmu6IcastmzOe/7zsxbA41QbFo2NgXJRv2XGKLZE/rZlDSJ5yGOTUUq
	 zMK5tt1cYDRTd/Td3sttYy8aJ2n9h1JuYXeOob4OTRxURhlcpL/Wy0Ofo2FnyoNHOY
	 XzOZ5FEUtRyK6xqigJ7SfwIYG24EQL+wkYWbFNvgtl6bl0Mv2dYDKNIbctwmD0PNk/
	 th27XLr671aQ9V2zuZn3rBNc0tCTT9b2F5m0fMLzaeFggLrSPRbs1R/XVPVxjUSgGx
	 Z7p9n+3b31xAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46F7C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171953786278.17240.8792758869889082459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c2d66db014563b8363d7db540fd979644252e1631525e096e27f5f9ca74782
Date: Fri, 28 Jun 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719537862
