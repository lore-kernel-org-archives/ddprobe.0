Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1EC1F5437
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760914194; cv=none; b=GpjlqlauBxkRZHBDUeelxuUeZqe/ZXM1BGl1aipMg3k3Uhx+OkGq4auoI0XhYQ0SbWbwsJimP8ANhXMa5DvaEHfsAKa1rLAZGRUzdHC5maN1HMDlIQakknqLewYmFdtcWDs1RYHsJZL3yk5oBW6XYC4YT/4/s5kWY4TS7N4HLSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760914194; c=relaxed/simple;
	bh=QaSRi2vAibvQVS4Aloi3hdYaMXKYqroyPIFZQc7IOX4=;
	h=To:Subject:From:Message-Id:Date; b=DG451k2pLo3rT7IYA4vwHKwzSYJXvfztWNkMjva/bgM37/FJ4EfafU4aWGHZKOIZSsNUsixmibvCy6Rv5RSxtu0VjQ4LVes3WPuuwwly1Rq9h8mJyhTmOutbiO1WG9wax5lUZzfNDrnxWKkqmH8cgmQxiAlsY+c8oPh8HNXx7YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKrWLkkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKrWLkkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FD9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760914193;
	bh=QaSRi2vAibvQVS4Aloi3hdYaMXKYqroyPIFZQc7IOX4=;
	h=To:Subject:From:Date:From;
	b=AKrWLkkLDaHySiCj+1MHMGT/OwTU6sXgUOg/3hwJyLH7KcGLsi6VxlfrLDfKEdi0Z
	 plgvc8Zc/5lOp8dACpmVdBSm8EPLij9aQf3jOmwtqWeY3CuvjTy49qAn37YLUfXAMt
	 Mp+HCyjdqbfDTNA9CHqomnNity8CjNJQg7TDT94r2MA71lnjECWNXyxNnu7AV/Btn7
	 9d+B3oiXFVM1V0le8n3x36LVVPsgy4jL+X/0uW/VH18NnU5UDhDt/gY2x0we+rF8fb
	 V4TzCVs0NirENyZIYVwW1uToShbULWtDFgQK853rOq5V9Y+zGBFTUNGhJhYkX/p/jm
	 otWN1Y9pZPczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB1CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091419358.1591.8060345505021563212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968d5efab9827b118910fefc3b51050952359acd686b5cfc00047b8e40860be3
Date: Sun, 19 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760914193
